function ConvertFrom-OpenSpecDocx {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$InputPath,

        [Parameter(Mandatory)]
        [string]$OutputPath,

        [Parameter(Mandatory)]
        [object]$Toolchain
    )

    return ConvertFrom-OpenSpecDocxWithOpenXml -InputPath $InputPath -OutputPath $OutputPath -Toolchain $Toolchain
}

function ConvertFrom-OpenSpecDocxWithOpenXml {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$InputPath,

        [Parameter(Mandatory)]
        [string]$OutputPath,

        [Parameter(Mandatory)]
        [object]$Toolchain
    )

    if (-not (Test-Path -LiteralPath $InputPath)) {
        throw "DOCX file not found: $InputPath"
    }

    $outputDirectory = Split-Path -Path $OutputPath -Parent
    if (-not (Test-Path -LiteralPath $outputDirectory)) {
        [void](New-Item -Path $outputDirectory -ItemType Directory -Force)
    }

    $notes = New-Object System.Collections.Generic.List[string]
    if ($Toolchain.HasOpenXml) {
        try {
            Import-Module OpenXML -ErrorAction Stop | Out-Null
            $notes.Add('OpenXML PowerShell module loaded.')
        }
        catch {
            $notes.Add("OpenXML module was detected but failed to load: $($_.Exception.Message)")
        }
    }
    else {
        $notes.Add('OpenXML module not detected; using Open XML package parser implementation.')
    }

    Add-Type -AssemblyName System.IO.Compression
    Add-Type -AssemblyName System.IO.Compression.FileSystem

    $archive = $null
    try {
        $archive = [System.IO.Compression.ZipFile]::OpenRead($InputPath)
        $documentEntry = $archive.GetEntry('word/document.xml')
        if ($null -eq $documentEntry) {
            throw 'word/document.xml entry was not found in DOCX package.'
        }

        $stream = $documentEntry.Open()
        $reader = New-Object System.IO.StreamReader($stream)
        $documentXml = $reader.ReadToEnd()
        $reader.Dispose()
        $stream.Dispose()

        $document = New-Object System.Xml.XmlDocument
        $document.PreserveWhitespace = $false
        $document.LoadXml($documentXml)

        $nsmgr = New-Object System.Xml.XmlNamespaceManager($document.NameTable)
        $nsmgr.AddNamespace('w', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')

        $body = $document.SelectSingleNode('//w:body', $nsmgr)
        if ($null -eq $body) {
            throw 'Document body was not found in DOCX XML.'
        }

        $relationshipMap = Get-OpenSpecOpenXmlRelationshipMap -Archive $archive
        $lines = New-Object System.Collections.Generic.List[string]
        $emittedAnchors = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)

        foreach ($child in $body.ChildNodes) {
            if ($child.LocalName -eq 'p') {
                $text = ConvertFrom-OpenSpecOpenXmlParagraph -ParagraphNode $child -NamespaceManager $nsmgr -RelationshipMap $relationshipMap
                $styleNode = $child.SelectSingleNode('./w:pPr/w:pStyle', $nsmgr)
                $style = if ($styleNode -and $styleNode.Attributes) { $styleNode.GetAttribute('val', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main') } else { '' }
                $anchors = Get-OpenSpecOpenXmlParagraphAnchors -ParagraphNode $child -NamespaceManager $nsmgr -ParagraphText $text -HeadingStyle $style

                foreach ($anchor in $anchors) {
                    if ([string]::IsNullOrWhiteSpace($anchor)) {
                        continue
                    }

                    if (-not $emittedAnchors.Add($anchor)) {
                        continue
                    }

                    $lines.Add(('<a id="' + $anchor + '"></a>'))
                }

                $numberingNode = $child.SelectSingleNode('./w:pPr/w:numPr', $nsmgr)
                if ([string]::IsNullOrWhiteSpace($text)) {
                    if ($lines.Count -gt 0 -and $lines[$lines.Count - 1] -ne '') {
                        $lines.Add('')
                    }
                    continue
                }

                if ($style -match '^Heading(?<level>[1-6])$') {
                    $level = [int]$Matches['level']
                    $lines.Add((('{0} ' -f ('#' * $level)) + $text.Trim()))
                    $lines.Add('')
                }
                elseif ($numberingNode) {
                    $lines.Add(('- ' + $text.Trim()))
                }
                else {
                    $lines.Add($text.Trim())
                    $lines.Add('')
                }
            }
            elseif ($child.LocalName -eq 'tbl') {
                $tableLines = ConvertFrom-OpenSpecOpenXmlTable -TableNode $child -NamespaceManager $nsmgr
                foreach ($line in $tableLines) {
                    $lines.Add($line)
                }
                $lines.Add('')
            }
        }

        $markdown = ($lines.ToArray() -join [Environment]::NewLine).Trim()
        $markdown = Add-OpenSpecSectionAnchorsFromToc -Markdown $markdown
        if ([string]::IsNullOrWhiteSpace($markdown)) {
            throw 'OpenXml conversion produced empty markdown output.'
        }

        $markdown | Set-Content -LiteralPath $OutputPath -Encoding UTF8
    }
    finally {
        if ($archive) {
            $archive.Dispose()
        }
    }

    return [pscustomobject]@{
        PSTypeName = 'AwakeCoding.OpenSpecs.ConversionStep'
        Strategy = 'openxml-docx'
        OutputPath = $OutputPath
        Notes = $notes.ToArray()
    }
}

function Get-OpenSpecOpenXmlNodeText {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Xml.XmlNode]$Node,

        [Parameter(Mandatory)]
        [System.Xml.XmlNamespaceManager]$NamespaceManager
    )

    # Walk paragraph and run structure to extract text properly.
    # Word splits text across multiple <w:r> runs at arbitrary boundaries
    # (spell-check, formatting, revisions). Concatenating <w:t> content
    # directly (no extra spaces) gives the correct text. Breaks, tabs, and
    # carriage returns between runs are represented by <w:br/>, <w:tab/>,
    # and <w:cr/> elements that must be converted to spaces.
    $paragraphParts = New-Object System.Collections.Generic.List[string]
    $paragraphNodes = $Node.SelectNodes('.//w:p', $NamespaceManager)

    if ($null -eq $paragraphNodes -or $paragraphNodes.Count -eq 0) {
        # Fallback: node may not contain paragraphs (e.g., a single run).
        # Collect text directly from runs or text nodes.
        $runNodes = $Node.SelectNodes('.//w:r', $NamespaceManager)
        if ($null -ne $runNodes -and $runNodes.Count -gt 0) {
            $parts = New-Object System.Collections.Generic.List[string]
            foreach ($runNode in $runNodes) {
                $runText = ConvertFrom-OpenSpecOpenXmlRunText -RunNode $runNode -NamespaceManager $NamespaceManager
                if (-not [string]::IsNullOrEmpty($runText)) {
                    $parts.Add($runText)
                }
            }
            return (($parts.ToArray() -join '') -replace '\s+', ' ').Trim()
        }

        # Last resort: just get raw inner text
        return ($Node.InnerText -replace '\s+', ' ').Trim()
    }

    foreach ($paragraphNode in $paragraphNodes) {
        $runNodes = $paragraphNode.SelectNodes('./w:r', $NamespaceManager)
        $parts = New-Object System.Collections.Generic.List[string]
        foreach ($runNode in $runNodes) {
            $runText = ConvertFrom-OpenSpecOpenXmlRunText -RunNode $runNode -NamespaceManager $NamespaceManager
            if (-not [string]::IsNullOrEmpty($runText)) {
                $parts.Add($runText)
            }
        }

        $paraText = ($parts.ToArray() -join '').Trim()
        if (-not [string]::IsNullOrWhiteSpace($paraText)) {
            $paragraphParts.Add($paraText)
        }
    }

    return (($paragraphParts.ToArray() -join ' ') -replace '\s+', ' ').Trim()
}

function Get-OpenSpecOpenXmlRelationshipMap {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.IO.Compression.ZipArchive]$Archive
    )

    $map = @{}
    $relsEntry = $Archive.GetEntry('word/_rels/document.xml.rels')
    if ($null -eq $relsEntry) {
        return $map
    }

    $stream = $relsEntry.Open()
    $reader = New-Object System.IO.StreamReader($stream)
    $relsXml = $reader.ReadToEnd()
    $reader.Dispose()
    $stream.Dispose()

    $relsDoc = New-Object System.Xml.XmlDocument
    $relsDoc.PreserveWhitespace = $false
    $relsDoc.LoadXml($relsXml)

    $nsmgr = New-Object System.Xml.XmlNamespaceManager($relsDoc.NameTable)
    $nsmgr.AddNamespace('r', 'http://schemas.openxmlformats.org/package/2006/relationships')

    $relationshipNodes = $relsDoc.SelectNodes('//r:Relationship', $nsmgr)
    foreach ($relationshipNode in $relationshipNodes) {
        $id = $relationshipNode.GetAttribute('Id')
        $target = $relationshipNode.GetAttribute('Target')
        $targetMode = $relationshipNode.GetAttribute('TargetMode')

        if ([string]::IsNullOrWhiteSpace($id) -or [string]::IsNullOrWhiteSpace($target)) {
            continue
        }

        $resolvedTarget = $target
        if ($targetMode -ne 'External' -and -not ($target -match '^(?i)https?://')) {
            if ($target.StartsWith('/')) {
                $resolvedTarget = $target.TrimStart('/')
            }
            else {
                $resolvedTarget = "word/$target"
            }
        }

        $map[$id] = [pscustomobject]@{
            Target = $resolvedTarget
            TargetMode = $targetMode
        }
    }

    return $map
}

function ConvertFrom-OpenSpecOpenXmlParagraph {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Xml.XmlNode]$ParagraphNode,

        [Parameter(Mandatory)]
        [System.Xml.XmlNamespaceManager]$NamespaceManager,

        [Parameter(Mandatory)]
        [hashtable]$RelationshipMap
    )

    $segments = New-Object System.Collections.Generic.List[string]
    foreach ($child in $ParagraphNode.ChildNodes) {
        $rendered = ConvertFrom-OpenSpecOpenXmlInlineNode -Node $child -NamespaceManager $NamespaceManager -RelationshipMap $RelationshipMap
        if (-not [string]::IsNullOrEmpty($rendered)) {
            $segments.Add($rendered)
        }
    }

    $joined = ($segments.ToArray() -join '')
    $joined = $joined -replace "`r?`n", ' '
    $joined = $joined -replace '\s{2,}', ' '
    return $joined.Trim()
}

function ConvertFrom-OpenSpecOpenXmlInlineNode {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Xml.XmlNode]$Node,

        [Parameter(Mandatory)]
        [System.Xml.XmlNamespaceManager]$NamespaceManager,

        [Parameter(Mandatory)]
        [hashtable]$RelationshipMap
    )

    if ($null -eq $Node) {
        return ''
    }

    switch ($Node.LocalName) {
        'r' {
            return ConvertFrom-OpenSpecOpenXmlRunText -RunNode $Node -NamespaceManager $NamespaceManager
        }
        'hyperlink' {
            $linkTextParts = New-Object System.Collections.Generic.List[string]
            foreach ($inner in $Node.ChildNodes) {
                $part = ConvertFrom-OpenSpecOpenXmlInlineNode -Node $inner -NamespaceManager $NamespaceManager -RelationshipMap $RelationshipMap
                if (-not [string]::IsNullOrEmpty($part)) {
                    $linkTextParts.Add($part)
                }
            }

            $linkText = ($linkTextParts.ToArray() -join '')
            $linkText = ($linkText -replace '\s{2,}', ' ').Trim()
            if ([string]::IsNullOrWhiteSpace($linkText)) {
                return ''
            }

            $anchor = $Node.GetAttribute('anchor', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
            if (-not [string]::IsNullOrWhiteSpace($anchor)) {
                return "[$linkText](#$anchor)"
            }

            $relationshipId = $Node.GetAttribute('id', 'http://schemas.openxmlformats.org/officeDocument/2006/relationships')
            if (-not [string]::IsNullOrWhiteSpace($relationshipId) -and $RelationshipMap.ContainsKey($relationshipId)) {
                $target = $RelationshipMap[$relationshipId].Target
                if (-not [string]::IsNullOrWhiteSpace($target)) {
                    return "[$linkText]($target)"
                }
            }

            return $linkText
        }
        'bookmarkStart' {
            return ''
        }
        default {
            if ($Node.ChildNodes -and $Node.ChildNodes.Count -gt 0) {
                $parts = New-Object System.Collections.Generic.List[string]
                foreach ($innerChild in $Node.ChildNodes) {
                    $part = ConvertFrom-OpenSpecOpenXmlInlineNode -Node $innerChild -NamespaceManager $NamespaceManager -RelationshipMap $RelationshipMap
                    if (-not [string]::IsNullOrEmpty($part)) {
                        $parts.Add($part)
                    }
                }
                return ($parts.ToArray() -join '')
            }

            return ''
        }
    }
}

function ConvertFrom-OpenSpecOpenXmlRunText {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Xml.XmlNode]$RunNode,

        [Parameter(Mandatory)]
        [System.Xml.XmlNamespaceManager]$NamespaceManager
    )

    $parts = New-Object System.Collections.Generic.List[string]
    foreach ($runChild in $RunNode.ChildNodes) {
        switch ($runChild.LocalName) {
            't' {
                $parts.Add($runChild.InnerText)
            }
            'tab' {
                $parts.Add(' ')
            }
            'br' {
                $parts.Add(' ')
            }
            'cr' {
                $parts.Add(' ')
            }
        }
    }

    return ($parts.ToArray() -join '')
}

function Get-OpenSpecOpenXmlParagraphAnchors {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Xml.XmlNode]$ParagraphNode,

        [Parameter(Mandatory)]
        [System.Xml.XmlNamespaceManager]$NamespaceManager,

        [Parameter()]
        [string]$ParagraphText,

        [Parameter()]
        [string]$HeadingStyle
    )

    $anchors = New-Object System.Collections.Generic.List[string]

    $bookmarkNodes = $ParagraphNode.SelectNodes('.//w:bookmarkStart', $NamespaceManager)
    foreach ($bookmarkNode in $bookmarkNodes) {
        $bookmarkName = $bookmarkNode.GetAttribute('name', 'http://schemas.openxmlformats.org/wordprocessingml/2006/main')
        if ([string]::IsNullOrWhiteSpace($bookmarkName)) {
            continue
        }

        if ($bookmarkName -eq '_GoBack') {
            continue
        }

        $anchors.Add($bookmarkName)
    }

    if ($HeadingStyle -match '^Heading[1-6]$') {
        $sectionAnchor = Get-OpenSpecSectionAnchorFromHeadingText -HeadingText $ParagraphText
        if (-not [string]::IsNullOrWhiteSpace($sectionAnchor)) {
            $anchors.Add($sectionAnchor)
        }
    }

    return @($anchors.ToArray() | Select-Object -Unique)
}

function Get-OpenSpecSectionAnchorFromHeadingText {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$HeadingText
    )

    if ([string]::IsNullOrWhiteSpace($HeadingText)) {
        return $null
    }

    $normalized = ($HeadingText -replace '^\s+', '').Trim()
    if ($normalized -match '^(?<num>\d+(?:\.\d+){0,6})(?:\.|\s|$)') {
        return "Section_$($Matches['num'])"
    }

    return $null
}

function Add-OpenSpecSectionAnchorsFromToc {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $result = $Markdown
    $tocRegex = [regex]::new(
        '(?im)^\[(?<label>(?<num>\d+(?:\.\d+)*)[^\]]*)\]\(#(?<toc>_Toc\d+)\)\s*$',
        [System.Text.RegularExpressions.RegexOptions]::None
    )

    # Build map from _Toc anchors to Section_X.Y anchors.
    $aliasMap = @{}
    foreach ($match in $tocRegex.Matches($result)) {
        $sectionNum = $match.Groups['num'].Value
        $tocAnchor = $match.Groups['toc'].Value

        if ([string]::IsNullOrWhiteSpace($sectionNum) -or [string]::IsNullOrWhiteSpace($tocAnchor)) {
            continue
        }

        $sectionAnchor = "Section_$sectionNum"
        if (-not $aliasMap.ContainsKey($tocAnchor)) {
            $aliasMap[$tocAnchor] = $sectionAnchor
        }
    }

    # Rewrite TOC links: replace _Toc targets with Section_X.Y and strip page numbers.
    $result = $tocRegex.Replace($result, {
        param($m)
        $label = $m.Groups['label'].Value
        $sectionNum = $m.Groups['num'].Value
        $tocAnchor = $m.Groups['toc'].Value

        # Determine the target anchor.
        $targetAnchor = if ($aliasMap.ContainsKey($tocAnchor)) {
            $aliasMap[$tocAnchor]
        } else {
            $tocAnchor
        }

        # Strip the trailing page number from the label.
        # Label format: "<section_num> <title> <page_num>"
        # The page number is the last group of digits at the end.
        $cleanLabel = $label
        if ($cleanLabel -match '^(?<num>\d+(?:\.\d+)*)\s+(?<title>.+?)\s+\d+$') {
            $cleanLabel = "$($Matches['num']) $($Matches['title'])"
        }
        elseif ($cleanLabel -match '^(?<num>\d+(?:\.\d+)*)\s+\d+$') {
            # Edge case: section with only a number and page number (no title text)
            $cleanLabel = $Matches['num']
        }

        "[$cleanLabel](#$targetAnchor)"
    })

    # Ensure Section_X.Y anchor tags exist at each heading that has a _Toc anchor.
    foreach ($tocAnchor in $aliasMap.Keys) {
        $sectionAnchor = $aliasMap[$tocAnchor]
        $sectionPattern = '<a id="' + [regex]::Escape($sectionAnchor) + '"></a>'
        if ($result -match $sectionPattern) {
            continue
        }

        # Insert Section anchor alongside the _Toc anchor tag.
        $anchorPattern = '<a id="' + [regex]::Escape($tocAnchor) + '"></a>'
        $anchorRegex = [regex]::new($anchorPattern, [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
        $anchorMatch = $anchorRegex.Match($result)
        if (-not $anchorMatch.Success) {
            continue
        }

        $newAnchor = '<a id="' + $sectionAnchor + '"></a>'
        $replacement = $newAnchor + [Environment]::NewLine + $anchorMatch.Value
        $result = $result.Substring(0, $anchorMatch.Index) + $replacement + $result.Substring($anchorMatch.Index + $anchorMatch.Length)
    }

    # Remove _Toc anchor tags — they are no longer referenced by TOC links
    # (which now use Section_X.Y) and were only kept for positioning above.
    $result = [regex]::Replace($result, '(?m)^\s*<a id="_Toc\d+"></a>\s*\r?\n?', '')

    return $result
}

function ConvertFrom-OpenSpecOpenXmlTable {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Xml.XmlNode]$TableNode,

        [Parameter(Mandatory)]
        [System.Xml.XmlNamespaceManager]$NamespaceManager
    )

    $rows = New-Object System.Collections.Generic.List[object]
    $maxColumns = 0

    $rowNodes = $TableNode.SelectNodes('./w:tr', $NamespaceManager)
    foreach ($rowNode in $rowNodes) {
        $cells = New-Object System.Collections.Generic.List[string]
        $cellNodes = $rowNode.SelectNodes('./w:tc', $NamespaceManager)
        foreach ($cellNode in $cellNodes) {
            $cells.Add((Get-OpenSpecOpenXmlNodeText -Node $cellNode -NamespaceManager $NamespaceManager))
        }

        if ($cells.Count -gt $maxColumns) {
            $maxColumns = $cells.Count
        }

        $rows.Add($cells)
    }

    if ($rows.Count -eq 0 -or $maxColumns -eq 0) {
        return @('[Table with row/column spans - textual fallback]')
    }

    $header = @($rows[0])
    while ($header.Count -lt $maxColumns) {
        $header += "Column $($header.Count + 1)"
    }

    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('| ' + (($header | ForEach-Object { ConvertTo-OpenSpecEscapedPipeText $_ }) -join ' | ') + ' |')
    $lines.Add('| ' + ((1..$maxColumns | ForEach-Object { '---' }) -join ' | ') + ' |')

    for ($rowIndex = 1; $rowIndex -lt $rows.Count; $rowIndex++) {
        $row = @($rows[$rowIndex])
        while ($row.Count -lt $maxColumns) {
            $row += ''
        }

        $renderedRow = $row | ForEach-Object {
            if ([string]::IsNullOrWhiteSpace($_)) { '-' } else { ConvertTo-OpenSpecEscapedPipeText $_ }
        }
        $lines.Add('| ' + ($renderedRow -join ' | ') + ' |')
    }

    return $lines.ToArray()
}
