function Invoke-OpenSpecMarkdownCleanup {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown,

        [Parameter(Mandatory)]
        [string]$CurrentProtocolId,

        [switch]$RemoveDocumentIndex = $true
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown

    if ($RemoveDocumentIndex) {
        $indexResult = Remove-OpenSpecDocumentIndex -Markdown $result
        $result = $indexResult.Markdown
        if ($indexResult.Removed) {
            [void]$issues.Add([pscustomobject]@{
                Type = 'DocumentIndexRemoved'
                Severity = 'Info'
                Reason = 'Back-of-document index section was removed (page numbers are not meaningful in Markdown).'
            })
        }
    }

    $titleResult = Set-OpenSpecDocumentTitle -Markdown $result -CurrentProtocolId $CurrentProtocolId
    $result = $titleResult.Markdown
    if ($titleResult.Normalized) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'DocumentTitleNormalized'
            Severity = 'Info'
            Reason = 'Document title was normalized to a single H1 heading.'
        })
    }

    $frontMatterResult = Remove-OpenSpecFrontMatterBoilerplate -Markdown $result
    $result = $frontMatterResult.Markdown
    if ($frontMatterResult.Removed) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'FrontMatterBoilerplateRemoved'
            Severity = 'Info'
            Reason = 'IP notice, revision history, and support boilerplate were removed after the title; last updated date retained when present.'
        })
    }

    $tableResult = ConvertFrom-OpenSpecHtmlTables -Markdown $result
    $result = $tableResult.Markdown
    foreach ($issue in $tableResult.Issues) { [void]$issues.Add($issue) }

    $residualTableResult = ConvertFrom-OpenSpecResidualTableBlocks -Markdown $result
    $result = $residualTableResult.Markdown
    foreach ($issue in $residualTableResult.Issues) { [void]$issues.Add($issue) }

    $linkResult = ConvertTo-OpenSpecInternalLinks -Markdown $result -CurrentProtocolId $CurrentProtocolId
    $result = $linkResult.Markdown
    foreach ($issue in $linkResult.Issues) { [void]$issues.Add($issue) }

    $encodedUrlResult = ConvertTo-OpenSpecNormalizedEncodedBracketUrls -Markdown $result
    $result = $encodedUrlResult.Markdown
    foreach ($issue in $encodedUrlResult.Issues) { [void]$issues.Add($issue) }

    $tocResult = ConvertTo-OpenSpecNormalizedTocLinks -Markdown $result
    $result = $tocResult.Markdown
    foreach ($issue in $tocResult.Issues) { [void]$issues.Add($issue) }

    $guidResult = Resolve-OpenSpecGuidSectionAnchors -Markdown $result
    $result = $guidResult.Markdown
    foreach ($issue in $guidResult.Issues) { [void]$issues.Add($issue) }

    $crossSpecResult = Repair-OpenSpecCrossSpecLinks -Markdown $result -CurrentProtocolId $CurrentProtocolId
    $result = $crossSpecResult.Markdown
    foreach ($issue in $crossSpecResult.Issues) { [void]$issues.Add($issue) }

    $sectionNumResult = Repair-OpenSpecSectionNumberLinks -Markdown $result
    $result = $sectionNumResult.Markdown
    foreach ($issue in $sectionNumResult.Issues) { [void]$issues.Add($issue) }

    $mathResult = ConvertTo-OpenSpecNormalizedMathText -Markdown $result
    $result = $mathResult.Markdown
    foreach ($issue in $mathResult.Issues) { [void]$issues.Add($issue) }

    $result = Convert-OpenSpecInlineHtmlToMarkdown -Text $result
    $result = Remove-OpenSpecStandaloneTableTagLines -Text $result

    $anchorResult = Add-OpenSpecSectionAnchors -Markdown $result
    $result = $anchorResult.Markdown
    if ($anchorResult.InjectedCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'SectionAnchorsInjected'
            Severity = 'Info'
            Count = $anchorResult.InjectedCount
            Reason = 'Section anchor tags were added so TOC and in-document links resolve correctly.'
        })
    }

    $tocAnchorResult = Add-OpenSpecMissingSectionAnchorsFromToc -Markdown $result
    $result = $tocAnchorResult.Markdown
    if ($tocAnchorResult.InjectedCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'MissingSectionAnchorsFromToc'
            Severity = 'Info'
            Count = $tocAnchorResult.InjectedCount
            Reason = 'Missing section anchors were injected using TOC titles so linked section numbers resolve.'
        })
    }

    $guidByHeadingResult = Repair-OpenSpecSectionGuidLinksByHeadingMatch -Markdown $result
    $result = $guidByHeadingResult.Markdown
    if ($guidByHeadingResult.LinksRepaired -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'SectionGuidLinksRepairedByHeading'
            Severity = 'Info'
            Count = $guidByHeadingResult.LinksRepaired
            Reason = 'Section GUID links were rewritten to section numbers by matching link text to headings.'
        })
    }

    $glossaryResult = Add-OpenSpecGlossaryAnchorsAndRepairLinks -Markdown $result
    $result = $glossaryResult.Markdown
    if ($glossaryResult.AnchorsInjected -gt 0 -or $glossaryResult.LinksRepaired -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'GlossaryAnchorsAndLinks'
            Severity = 'Info'
            AnchorsInjected = $glossaryResult.AnchorsInjected
            LinksRepaired = $glossaryResult.LinksRepaired
            Reason = 'Glossary term anchors were added and #gt_ links were rewritten so they resolve.'
        })
    }

    $tocGitHubResult = ConvertTo-OpenSpecGitHubFriendlyToc -Markdown $result
    $result = $tocGitHubResult.Markdown
    if ($tocGitHubResult.Rewritten) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'TocGitHubFriendly'
            Severity = 'Info'
            Reason = 'Table of contents was rewritten as collapsible sections for better GitHub rendering.'
        })
    }

    $newLine = [Environment]::NewLine
    $result = [regex]::Replace($result, "(`r?`n){3,}", "$newLine$newLine")

    [pscustomobject]@{
        PSTypeName = 'AwakeCoding.OpenSpecs.MarkdownCleanupResult'
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function ConvertFrom-OpenSpecHtmlTables {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown
    $colspanInfoCount = 0
    $colspanWarningCount = 0
    $rowspanExpandedCount = 0

    $tableRegex = [System.Text.RegularExpressions.Regex]::new(
        '<table\b[^>]*>.*?</table>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )
    $tableMatches = $tableRegex.Matches($Markdown)

    for ($i = $tableMatches.Count - 1; $i -ge 0; $i--) {
        $m = $tableMatches[$i]
        $replacement = ConvertFrom-OpenSpecSingleHtmlTable -TableHtml $m.Value
        foreach ($issue in $replacement.Issues) {
            if ($issue.Type -eq 'TableColspanExpanded') {
                if ($issue.PSObject.Properties['Severity'] -and $issue.Severity -eq 'Info') {
                    $colspanInfoCount++
                }
                else {
                    $colspanWarningCount++
                }
                continue
            }

            if ($issue.Type -eq 'TableRowspanExpanded') {
                $rowspanExpandedCount++
                continue
            }

            [void]$issues.Add($issue)
        }

        $before = $result.Substring(0, $m.Index)
        $after = $result.Substring($m.Index + $m.Length)
        $result = $before + $replacement.Markdown + $after
    }

    if ($colspanInfoCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'TableColspanExpanded'
            Severity = 'Info'
            Count = $colspanInfoCount
            Reason = 'Packet-layout tables had colspan expanded into markdown columns.'
        })
    }

    if ($colspanWarningCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'TableColspanExpanded'
            Severity = 'Warning'
            Count = $colspanWarningCount
            Reason = 'Non-packet tables had colspan expanded into markdown columns.'
        })
    }

    if ($rowspanExpandedCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'TableRowspanExpanded'
            Severity = 'Info'
            Count = $rowspanExpandedCount
            Reason = 'Tables with rowspan were expanded into markdown rows.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function ConvertFrom-OpenSpecSingleHtmlTable {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$TableHtml
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $newLine = [Environment]::NewLine

    $hasRowSpan = $false
    $hasColSpan = $false
    $rowRegex = [System.Text.RegularExpressions.Regex]::new(
        '<tr\b[^>]*>(?<row>.*?)</tr>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )
    $cellRegex = [System.Text.RegularExpressions.Regex]::new(
        '<t(h|d)\b(?<attrs>[^>]*)>(?<cell>.*?)</t(h|d)>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )

    $rowMatches = $rowRegex.Matches($TableHtml)
    $rows = New-Object System.Collections.Generic.List[object]
    $maxCols = 0
    $activeRowSpans = @{}

    $consumeSpanAtColumn = {
        param(
            [int]$Column,
            [System.Collections.Generic.List[string]]$TargetCells
        )

        if (-not $activeRowSpans.ContainsKey($Column)) {
            return $false
        }

        $span = $activeRowSpans[$Column]
        [void]$TargetCells.Add([string]$span.Value)

        if ($span.Remaining -le 1) {
            [void]$activeRowSpans.Remove($Column)
        }
        else {
            $activeRowSpans[$Column] = [pscustomobject]@{
                Remaining = ($span.Remaining - 1)
                Value = [string]$span.Value
            }
        }

        return $true
    }

    foreach ($rowMatch in $rowMatches) {
        $rowHtml = $rowMatch.Groups['row'].Value
        $cellMatches = $cellRegex.Matches($rowHtml)
        if ($cellMatches.Count -eq 0 -and $activeRowSpans.Count -eq 0) { continue }

        $cells = New-Object System.Collections.Generic.List[string]
        $columnIndex = 0

        foreach ($cellMatch in $cellMatches) {
            while (& $consumeSpanAtColumn $columnIndex $cells) {
                $columnIndex++
            }

            $attrs = $cellMatch.Groups['attrs'].Value
            $rawCell = $cellMatch.Groups['cell'].Value
            if ([string]::IsNullOrEmpty($rawCell)) {
                $v = ''
            }
            else {
                $v = Convert-OpenSpecInlineHtmlToMarkdown -Text $rawCell
            }
            $v = ConvertFrom-OpenSpecHtml -Html $v
            $v = ($v -replace '\s+', ' ').Trim()

            $colspan = 1
            $rowspan = 1
            if ($attrs -match '(?i)\bcolspan\s*=\s*"?(?<n>\d+)"?') {
                $colspan = [Math]::Max(1, [int]$Matches['n'])
            }
            if ($attrs -match '(?i)\browspan\s*=\s*"?(?<n>\d+)"?') {
                $rowspan = [Math]::Max(1, [int]$Matches['n'])
            }

            if ($rowspan -gt 1) { $hasRowSpan = $true }
            if ($colspan -gt 1) { $hasColSpan = $true }

            for ($pad = 0; $pad -lt $colspan; $pad++) {
                $cellValue = if ($pad -eq 0) { $v } else { '' }
                [void]$cells.Add($cellValue)

                if ($rowspan -gt 1) {
                    $activeRowSpans[$columnIndex] = [pscustomobject]@{
                        Remaining = ($rowspan - 1)
                        Value = $cellValue
                    }
                }

                $columnIndex++
            }
        }

        if ($activeRowSpans.Count -gt 0) {
            $pendingColumns = $activeRowSpans.Keys | ForEach-Object { [int]$_ } | Sort-Object
            foreach ($pendingColumn in $pendingColumns) {
                if ($pendingColumn -lt $columnIndex) {
                    continue
                }

                while ($columnIndex -lt $pendingColumn) {
                    [void]$cells.Add('')
                    $columnIndex++
                }

                if (& $consumeSpanAtColumn $columnIndex $cells) {
                    $columnIndex++
                }
            }
        }

        if ($cells.Count -gt $maxCols) { $maxCols = $cells.Count }
        [void]$rows.Add([pscustomobject]@{ Cells = $cells })
    }

    if ($rows.Count -eq 0) {
        [void]$issues.Add([pscustomobject]@{ Type = 'TableUnparsed'; Severity = 'Warning'; Reason = 'No rows extracted from HTML table.' })
        return [pscustomobject]@{
            Markdown = $newLine + '```text' + $newLine + '[Unparsed table block]' + $newLine + '```' + $newLine
            Issues = $issues.ToArray()
        }
    }

    if ($hasRowSpan) {
        [void]$issues.Add([pscustomobject]@{ Type = 'TableRowspanExpanded'; Severity = 'Info'; Reason = 'rowspan expanded into markdown rows.' })
    }

    if ($hasColSpan) {
        $isPacketLayout = Test-OpenSpecIsPacketLayoutTable -Rows $rows -MaxCols $maxCols
        $isSafeSemanticTable = Test-OpenSpecIsSafeSemanticColspanTable -Rows $rows -MaxCols $maxCols
        $isCompactNonPacket = (-not $isPacketLayout -and $maxCols -le 24)
        $isInformational = ($isPacketLayout -or $isSafeSemanticTable -or $isCompactNonPacket)
        [void]$issues.Add([pscustomobject]@{
            Type = 'TableColspanExpanded'
            Severity = if ($isInformational) { 'Info' } else { 'Warning' }
            Reason = if ($isPacketLayout) {
                'packet-layout table colspan expanded into markdown columns.'
            }
            elseif ($isSafeSemanticTable) {
                'semantic value/meaning table colspan expanded into markdown columns.'
            }
            elseif ($isCompactNonPacket) {
                'compact non-packet table colspan expanded into markdown columns.'
            }
            else {
                'non-packet table colspan expanded into markdown columns.'
            }
        })
    }

    $keepIndices = New-Object System.Collections.Generic.List[int]
    for ($col = 0; $col -lt $maxCols; $col++) {
        $hasContent = $false
        foreach ($row in $rows) {
            $cells = @($row.Cells.ToArray())
            if ($col -lt $cells.Count -and -not [string]::IsNullOrWhiteSpace($cells[$col])) {
                $hasContent = $true
                break
            }
        }

        if ($hasContent) {
            [void]$keepIndices.Add($col)
        }
    }

    if ($keepIndices.Count -eq 0) {
        $keepIndices.AddRange((0..($maxCols - 1)))
    }

    $headerCells = @($rows[0].Cells.ToArray())
    $header = foreach ($idx in $keepIndices) {
        if ($idx -lt $headerCells.Count) { $headerCells[$idx] } else { '' }
    }
    while ($header.Count -lt $maxCols) {
        $header += "Column $($header.Count + 1)"
    }

    if ($header.Count -gt $keepIndices.Count) {
        $header = $header[0..($keepIndices.Count - 1)]
    }

    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('| ' + (($header | ForEach-Object { ConvertTo-OpenSpecEscapedPipeText $_ }) -join ' | ') + ' |')
    $lines.Add('| ' + ((1..$header.Count | ForEach-Object { '---' }) -join ' | ') + ' |')

    for ($r = 1; $r -lt $rows.Count; $r++) {
        $rowCellsAll = @($rows[$r].Cells.ToArray())
        $rowCells = foreach ($idx in $keepIndices) {
            if ($idx -lt $rowCellsAll.Count) { $rowCellsAll[$idx] } else { '' }
        }
        $escaped = $rowCells | ForEach-Object { if ([string]::IsNullOrWhiteSpace($_)) { '-' } else { ConvertTo-OpenSpecEscapedPipeText $_ } }
        $lines.Add('| ' + ($escaped -join ' | ') + ' |')
    }

    [pscustomobject]@{
        Markdown = $newLine + ($lines.ToArray() -join $newLine) + $newLine
        Issues = $issues.ToArray()
    }
}

function ConvertFrom-OpenSpecResidualTableBlocks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown
    $normalizedCount = 0

    $blockRegex = [System.Text.RegularExpressions.Regex]::new(
        '(?is)(?<block>(?:\s*<table\b[^>]*>\s*)?(?:\s*<tr\b[^>]*>.*?</tr>\s*){1,}(?:\s*</table>\s*)?)',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )
    $trRegex = [System.Text.RegularExpressions.Regex]::new(
        '<tr\b[^>]*>.*?</tr>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )

    $blockMatches = $blockRegex.Matches($result)
    for ($i = $blockMatches.Count - 1; $i -ge 0; $i--) {
        $m = $blockMatches[$i]
        $block = $m.Groups['block'].Value

        if (-not $trRegex.IsMatch($block)) {
            continue
        }

        $replacement = ConvertFrom-OpenSpecResidualTableBlock -BlockHtml $block
        if (-not $replacement.Replaced) {
            continue
        }

        $before = $result.Substring(0, $m.Index)
        $after = $result.Substring($m.Index + $m.Length)
        $result = $before + $replacement.Markdown + $after
        $normalizedCount++
    }

    if ($normalizedCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'TableResidualNormalized'
            Severity = 'Info'
            Count = $normalizedCount
            Reason = 'Residual HTML row/cell blocks were normalized to markdown tables.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function ConvertFrom-OpenSpecResidualTableBlock {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$BlockHtml
    )

    $newLine = [Environment]::NewLine
    $rowRegex = [System.Text.RegularExpressions.Regex]::new(
        '<tr\b[^>]*>(?<row>.*?)</tr>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )
    $cellRegex = [System.Text.RegularExpressions.Regex]::new(
        '<t(h|d)\b[^>]*>(?<cell>.*?)</t(h|d)>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )

    $rowMatches = $rowRegex.Matches($BlockHtml)
    if ($rowMatches.Count -eq 0) {
        return [pscustomobject]@{ Replaced = $false; Markdown = $BlockHtml }
    }

    $rows = New-Object System.Collections.Generic.List[object]
    $maxCols = 0
    foreach ($rowMatch in $rowMatches) {
        $rowHtml = $rowMatch.Groups['row'].Value
        $cellMatches = $cellRegex.Matches($rowHtml)
        if ($cellMatches.Count -eq 0) {
            continue
        }

        $cells = New-Object System.Collections.Generic.List[string]
        foreach ($cellMatch in $cellMatches) {
            $value = Convert-OpenSpecInlineHtmlToMarkdown -Text $cellMatch.Groups['cell'].Value
            $value = ConvertFrom-OpenSpecHtml -Html $value
            $value = ($value -replace '\s+', ' ').Trim()
            [void]$cells.Add($value)
        }

        if ($cells.Count -gt $maxCols) {
            $maxCols = $cells.Count
        }
        [void]$rows.Add($cells.ToArray())
    }

    if ($rows.Count -lt 1 -or $maxCols -lt 1) {
        return [pscustomobject]@{ Replaced = $false; Markdown = $BlockHtml }
    }

    $header = @($rows[0])
    while ($header.Count -lt $maxCols) {
        $header += "Column $($header.Count + 1)"
    }

    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add('| ' + (($header | ForEach-Object { ConvertTo-OpenSpecEscapedPipeText $_ }) -join ' | ') + ' |')
    $lines.Add('| ' + ((1..$maxCols | ForEach-Object { '---' }) -join ' | ') + ' |')

    for ($r = 1; $r -lt $rows.Count; $r++) {
        $rowCells = @($rows[$r])
        while ($rowCells.Count -lt $maxCols) {
            $rowCells += ''
        }
        $escaped = $rowCells | ForEach-Object {
            if ([string]::IsNullOrWhiteSpace($_)) { '-' } else { ConvertTo-OpenSpecEscapedPipeText $_ }
        }
        $lines.Add('| ' + ($escaped -join ' | ') + ' |')
    }

    return [pscustomobject]@{
        Replaced = $true
        Markdown = $newLine + ($lines.ToArray() -join $newLine) + $newLine
    }
}

function Test-OpenSpecIsPacketLayoutTable {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [object]$Rows,

        [Parameter(Mandatory)]
        [int]$MaxCols
    )

    if ($MaxCols -lt 4 -or $Rows.Count -eq 0) {
        return $false
    }

    $headerCells = @($Rows[0].Cells.ToArray())
    if ($headerCells.Count -eq 0) {
        return $false
    }

    $numericLikeCount = 0
    foreach ($cell in $headerCells) {
        $trimmed = if ($null -eq $cell) { '' } else { $cell.Trim() }
        if ($trimmed -match '^\d(?:\s*\d)?(?:\s*-\s*\d{1,2})?$') {
            $numericLikeCount++
        }
    }

    $numericThreshold = [Math]::Max(4, [Math]::Floor($headerCells.Count * 0.5))
    if ($numericLikeCount -ge $numericThreshold) {
        return $true
    }

    $fixedBitWidths = @(8, 16, 24, 32, 64)
    if ($fixedBitWidths -contains $MaxCols) {
        $sparseRows = 0
        foreach ($row in $Rows) {
            $cells = @($row.Cells.ToArray())
            if ($cells.Count -eq 0) {
                continue
            }

            $emptyCount = 0
            foreach ($cell in $cells) {
                if ([string]::IsNullOrWhiteSpace($cell)) {
                    $emptyCount++
                }
            }

            $emptyRatio = $emptyCount / [Math]::Max(1, $cells.Count)
            if ($emptyRatio -ge 0.5) {
                $sparseRows++
            }
        }

        if ($sparseRows -gt 0) {
            return $true
        }
    }

    $headerTokens = New-Object System.Collections.Generic.List[string]
    $headerEmptyCount = 0
    foreach ($cell in $headerCells) {
        $token = if ($null -eq $cell) { '' } else { $cell.Trim().ToUpperInvariant() }
        if ([string]::IsNullOrWhiteSpace($token)) {
            $headerEmptyCount++
            continue
        }
        [void]$headerTokens.Add($token)
    }

    if ($MaxCols -ge 12 -and $headerEmptyCount -ge [Math]::Floor($headerCells.Count * 0.4)) {
        $hasBandLabels = ($headerTokens -contains 'HL') -or ($headerTokens -contains 'LH') -or ($headerTokens -contains 'LL')
        if ($hasBandLabels) {
            return $true
        }
    }

    return $false
}

function Test-OpenSpecIsSafeSemanticColspanTable {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [object]$Rows,

        [Parameter(Mandatory)]
        [int]$MaxCols
    )

    if ($Rows.Count -eq 0 -or $MaxCols -gt 8) {
        return $false
    }

    $headerCells = @($Rows[0].Cells.ToArray())
    if ($headerCells.Count -eq 0) {
        return $false
    }

    $normalizedHeader = ($headerCells | ForEach-Object { if ($null -eq $_) { '' } else { $_.Trim().ToLowerInvariant() } })
    $headerText = ($normalizedHeader -join ' ')

    if ($headerText -match '\bmeaning\b' -and $headerText -match '\b(value|flag|bits?|purpose|decimal|prefix)\b') {
        return $true
    }

    $nonEmptyHeader = @($normalizedHeader | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
    if ($MaxCols -le 8 -and $nonEmptyHeader.Count -ge 2) {
        $numericHeader = @($nonEmptyHeader | Where-Object { $_ -match '^\d+(?:\s*[-:]\s*\d+)?$' })
        $numericRatio = $numericHeader.Count / [Math]::Max(1, $nonEmptyHeader.Count)
        if ($numericRatio -lt 0.5) {
            return $true
        }
    }

    return $false
}

function ConvertTo-OpenSpecInternalLinks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown,

        [Parameter(Mandatory)]
        [string]$CurrentProtocolId
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown
    $rewriteCount = 0
    $rewriteSamples = New-Object System.Collections.Generic.List[object]
    $sampleCap = 20

    $result = [regex]::Replace($result, '\\\[(?<id>(?:MS|MC)-[A-Z0-9-]+)\\\]', '[${id}]')
    $result = [regex]::Replace(
        $result,
        '(?is)\\?\[\\?\[(?<id>(?:MS|MC)-[A-Z0-9-]+)\\?\]\\?\]\((?<url>[^)]+)\)',
        '[${id}](${url})'
    )

    $linkRegex = [System.Text.RegularExpressions.Regex]::new(
        '<a\b[^>]*href\s*=\s*["''](?<href>[^"'']+)["''][^>]*>(?<text>.*?)</a>',
        [System.Text.RegularExpressions.RegexOptions]'Singleline, IgnoreCase'
    )
    $result = $linkRegex.Replace($result, {
        param($m)
        $href = [System.Net.WebUtility]::HtmlDecode($m.Groups['href'].Value)
        $text = (ConvertFrom-OpenSpecHtml -Html $m.Groups['text'].Value)
        $rewritten = Resolve-OpenSpecLinkTarget -Url $href -CurrentProtocolId $CurrentProtocolId
        if ($rewritten.Rewritten) {
            $rewriteCount++
            if ($rewriteSamples.Count -lt $sampleCap) {
                [void]$rewriteSamples.Add([pscustomobject]@{ From = $href; To = $rewritten.Url })
            }
        }
        "[$text]($($rewritten.Url))"
    })

    $mdLinkRegex = [System.Text.RegularExpressions.Regex]::new(
        '(?<!\!)\[(?<text>[^\]]+)\]\((?<url>[^)]+)\)',
        [System.Text.RegularExpressions.RegexOptions]::Singleline
    )
    $result = $mdLinkRegex.Replace($result, {
        param($m)
        $url = $m.Groups['url'].Value
        $rewritten = Resolve-OpenSpecLinkTarget -Url $url -CurrentProtocolId $CurrentProtocolId
        if ($rewritten.Rewritten) {
            $rewriteCount++
            if ($rewriteSamples.Count -lt $sampleCap) {
                [void]$rewriteSamples.Add([pscustomobject]@{ From = $url; To = $rewritten.Url })
            }
        }
        "[$($m.Groups['text'].Value)]($($rewritten.Url))"
    })

    $result = [regex]::Replace(
        $result,
        '(?im)^\[(?<label>(?:\[(?:MS|MC)-[A-Z0-9-]+\])|(?:(?:MS|MC)-[A-Z0-9-]+))\]\:\s*(?<url>\S+)',
        {
            param($m)
            $url = $m.Groups['url'].Value
            $rewritten = Resolve-OpenSpecLinkTarget -Url $url -CurrentProtocolId $CurrentProtocolId
            if ($rewritten.Rewritten) {
                $rewriteCount++
                if ($rewriteSamples.Count -lt $sampleCap) {
                    [void]$rewriteSamples.Add([pscustomobject]@{ From = $url; To = $rewritten.Url })
                }
            }
            "[$($m.Groups['label'].Value)]: $($rewritten.Url)"
        }
    )

    $result = [regex]::Replace(
        $result,
        '(?i)%5b(?<id>(?:MS|MC)-[A-Z0-9-]+)%5d\.(?:pdf|docx)(?<frag>#[A-Za-z0-9_:\.-]+)?',
        {
            param($m)
            $id = $m.Groups['id'].Value.ToUpperInvariant()
            $frag = $m.Groups['frag'].Value
            $sourceUrl = $m.Value
            $target = if ($id -eq $CurrentProtocolId.ToUpperInvariant()) {
                if ($frag) { $frag } else { '#' }
            }
            else {
                "../$id/$id.md$frag"
            }
            $rewriteCount++
            if ($rewriteSamples.Count -lt $sampleCap) {
                [void]$rewriteSamples.Add([pscustomobject]@{ From = $sourceUrl; To = $target })
            }
            $target
        }
    )

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'LinkRewritten'
            Severity = 'Info'
            Count = $rewriteCount
            Samples = $rewriteSamples.ToArray()
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function ConvertTo-OpenSpecNormalizedTocLinks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $rewriteCount = 0

    $result = [regex]::Replace(
        $Markdown,
        '(?im)^\[(?<title>.+?)\s+\[(?<page>\d+)\]\(#(?<fragA>[^)]+)\)\]\(#(?<fragB>[^)]+)\)\r?$',
        {
            param($m)
            if ($m.Groups['fragA'].Value -ne $m.Groups['fragB'].Value) {
                return $m.Value
            }
            $rewriteCount++
            "[$($m.Groups['title'].Value)](#$($m.Groups['fragA'].Value))"
        }
    )

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'NestedTocLinkNormalized'
            Severity = 'Info'
            Count = $rewriteCount
            Reason = 'Nested table-of-contents links were normalized.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function ConvertTo-OpenSpecGitHubFriendlyToc {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $newLine = [Environment]::NewLine
    $tocLineRegex = [regex]::new('^\s*\[(?<num>\d+(?:\.\d+)*)\s+(?<title>[^\]]*)\]\(#Section_(?<sec>\d+(?:\.\d+)*)\)\s*$')
    $lines = $Markdown -split '\r?\n'
    $tocTitleIndex = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i].Trim() -ceq 'Table of Contents') {
            $tocTitleIndex = $i
            break
        }
    }
    if ($tocTitleIndex -lt 0) {
        return [pscustomobject]@{ Markdown = $Markdown; Rewritten = $false }
    }
    $tocEndIndex = -1
    for ($i = $tocTitleIndex + 1; $i -lt $lines.Count; $i++) {
        if ($tocLineRegex.IsMatch($lines[$i])) {
            $tocEndIndex = $i
        } elseif ($lines[$i].Trim() -ne '' -and $tocEndIndex -ge 0) {
            break
        }
    }
    if ($tocEndIndex -lt $tocTitleIndex) {
        return [pscustomobject]@{ Markdown = $Markdown; Rewritten = $false }
    }

    $entries = [System.Collections.Generic.List[object]]::new()
    for ($i = $tocTitleIndex + 1; $i -le $tocEndIndex; $i++) {
        $line = $lines[$i]
        $m = $tocLineRegex.Match($line)
        if ($m.Success) {
            [void]$entries.Add([pscustomobject]@{
                SectionNum = $m.Groups['num'].Value
                Title      = $m.Groups['title'].Value.Trim()
                FullLink   = $line.Trim()
            })
        }
    }
    if ($entries.Count -eq 0) {
        return [pscustomobject]@{ Markdown = $Markdown; Rewritten = $false }
    }

    $topLevelToTitle = @{}
    foreach ($e in $entries) {
        $first = $e.SectionNum -replace '\..*$', ''
        if (-not $topLevelToTitle.ContainsKey($first)) {
            $topLevelToTitle[$first] = $e.Title
        }
    }
    $groups = @{}
    foreach ($e in $entries) {
        $first = $e.SectionNum -replace '\..*$', ''
        if (-not $groups.ContainsKey($first)) {
            $groups[$first] = [System.Collections.Generic.List[object]]::new()
        }
        [void]$groups[$first].Add($e)
    }
    $sb = [System.Text.StringBuilder]::new()
    [void]$sb.AppendLine('Table of Contents')
    [void]$sb.AppendLine()
    $firstKeys = $groups.Keys | Sort-Object { [int]$_ }
    foreach ($key in $firstKeys) {
        $title = $topLevelToTitle[$key]
        [void]$sb.AppendLine('<details>')
        [void]$sb.AppendLine("<summary>$key $title</summary>")
        [void]$sb.AppendLine()
        foreach ($e in $groups[$key]) {
            $indent = '  ' * (($e.SectionNum -split '\.').Count - 1)
            [void]$sb.AppendLine("$indent- $($e.FullLink)")
        }
        [void]$sb.AppendLine('</details>')
        [void]$sb.AppendLine()
    }
    $newToc = $sb.ToString().TrimEnd($newLine.ToCharArray())
    $before = ($lines[0..($tocTitleIndex - 1)] -join $newLine).TrimEnd()
    $afterStart = $tocEndIndex + 1
    $after = if ($afterStart -lt $lines.Count) { $newLine + ($lines[$afterStart..($lines.Count - 1)] -join $newLine) } else { '' }
    $result = $before + $newLine + $newLine + $newToc + $after

    [pscustomobject]@{
        Markdown   = $result
        Rewritten  = $true
    }
}

function ConvertTo-OpenSpecNormalizedEncodedBracketUrls {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $rewriteCount = 0

    $result = [regex]::Replace(
        $Markdown,
        '(?i)%5b(?<id>(?:MS|MC)-[A-Z0-9-]+)%5d',
        {
            param($m)
            $rewriteCount++
            "[$($m.Groups['id'].Value.ToUpperInvariant())]"
        }
    )

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'EncodedBracketUrlNormalized'
            Severity = 'Info'
            Count = $rewriteCount
            Reason = 'Percent-encoded MS/MC bracket URL tokens were normalized.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function ConvertTo-OpenSpecNormalizedMathText {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $rewriteCount = 0

    $result = [regex]::Replace(
        $Markdown,
        '(?is)\$\$\\overline\{(?<v>[^}]+)\}\$\$',
        {
            param($m)
            $rewriteCount++
            $value = $m.Groups['v'].Value -replace '\\ldots', '…'
            "$value (repeating)"
        }
    )

    $result = [regex]::Replace(
        $result,
        '(?is)\$\\overline\{(?<v>[^}]+)\}\$',
        {
            param($m)
            $rewriteCount++
            $value = $m.Groups['v'].Value -replace '\\ldots', '…'
            "$value (repeating)"
        }
    )

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'MathOverlineNormalized'
            Severity = 'Info'
            Count = $rewriteCount
            Reason = 'TeX overline expressions were normalized to plain text.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function Resolve-OpenSpecGuidSectionAnchors {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown
    $rewriteCount = 0

    # Build a mapping from GUID-based anchors to human-readable Section_X.Y.Z
    # anchors. In the converted markdown, each heading is preceded by a pair of
    # anchor tags:
    #   <a id="section_<GUID>"></a>
    #   <a id="Section_X.Y.Z"></a>
    # Cross-reference links in the body text reference sections using the GUID
    # form (#Section_<GUID> or #section_<GUID>), which is both unreadable and
    # may not resolve due to a case mismatch (the bookmark anchor uses
    # lowercase "section_" while the hyperlink uses "Section_"). Replacing
    # these with the Section_X.Y.Z form fixes both issues.
    $guidToSection = @{}

    # Order 1: GUID anchor followed by Section anchor (most common)
    $pairRegex1 = [regex]::new(
        '<a\s+id="section_(?<guid>[0-9a-f]{32})"></a>\s*\r?\n<a\s+id="(?<section>Section_\d+(?:\.\d+)*)"></a>',
        [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    )
    foreach ($m in $pairRegex1.Matches($result)) {
        $guid = $m.Groups['guid'].Value.ToLowerInvariant()
        if (-not $guidToSection.ContainsKey($guid)) {
            $guidToSection[$guid] = $m.Groups['section'].Value
        }
    }

    # Order 2: Section anchor followed by GUID anchor (fallback)
    $pairRegex2 = [regex]::new(
        '<a\s+id="(?<section>Section_\d+(?:\.\d+)*)"></a>\s*\r?\n<a\s+id="section_(?<guid>[0-9a-f]{32})"></a>',
        [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    )
    foreach ($m in $pairRegex2.Matches($result)) {
        $guid = $m.Groups['guid'].Value.ToLowerInvariant()
        if (-not $guidToSection.ContainsKey($guid)) {
            $guidToSection[$guid] = $m.Groups['section'].Value
        }
    }

    if ($guidToSection.Count -eq 0) {
        return [pscustomobject]@{
            Markdown = $result
            Issues = $issues.ToArray()
        }
    }

    # Rewrite all link targets that reference GUID-based section anchors.
    # Matches both (#Section_GUID) and (#section_GUID) forms.
    $rewriteCounter = @{ Value = 0 }
    $result = [regex]::Replace(
        $result,
        '\(#[Ss]ection_(?<guid>[0-9a-f]{32})\)',
        {
            param($m)
            $guid = $m.Groups['guid'].Value.ToLowerInvariant()
            if ($guidToSection.ContainsKey($guid)) {
                $rewriteCounter.Value++
                "(#$($guidToSection[$guid]))"
            }
            else {
                $m.Value
            }
        }
    )
    $rewriteCount = $rewriteCounter.Value

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'GuidAnchorResolved'
            Severity = 'Info'
            Count = $rewriteCount
            MappedAnchors = $guidToSection.Count
            Reason = 'GUID-based section anchors were resolved to section number anchors.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function Repair-OpenSpecCrossSpecLinks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown,

        [Parameter(Mandatory)]
        [string]$CurrentProtocolId
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown
    $rewriteCount = 0

    # Links like ](#Section_<32hex>) are Word bookmark IDs. When they point to another
    # spec (cross-reference), the GUID is not in the current document, so they break.
    # Rewrite them to ](../ProtocolId/ProtocolId.md) using [MS-XXX] from the link text
    # or from the same line (e.g. References: "[MS-RDPBCGR] ... \"[Title](#Section_guid)\"").
    $pattern = '\[([^\]]+)\]\(#Section_([a-f0-9]{32})\)'
    $matches = [regex]::Matches($result, $pattern)
    $currentIdUpper = $CurrentProtocolId.ToUpperInvariant()

    foreach ($m in ($matches | Sort-Object -Property { $_.Index } -Descending)) {
        $linkText = $m.Groups[1].Value
        $nlIdx = $result.LastIndexOf("`n", [Math]::Min($m.Index, $result.Length - 1))
        $lineStart = if ($nlIdx -ge 0) { $nlIdx + 1 } else { 0 }
        $lineEndIdx = $result.IndexOf("`n", $m.Index)
        $lineEnd = if ($lineEndIdx -ge 0) { $lineEndIdx } else { $result.Length }
        $line = $result.Substring($lineStart, $lineEnd - $lineStart)

        $protocolId = $null
        if ($linkText -match '^(MS|MC)-[A-Z0-9\-]+$') {
            $protocolId = $linkText
        }
        elseif ($line -match '\[(MS-[A-Z0-9\-]+|MC-[A-Z0-9\-]+)\]') {
            $protocolId = $Matches[1]
        }

        if ($protocolId -and $protocolId.ToUpperInvariant() -ne $currentIdUpper) {
            $replacement = "[$linkText](../$protocolId/$protocolId.md)"
            $result = $result.Substring(0, $m.Index) + $replacement + $result.Substring($m.Index + $m.Length)
            $rewriteCount++
        }
    }

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'CrossSpecLinksRepaired'
            Severity = 'Info'
            Count = $rewriteCount
            Reason = 'Cross-spec references (GUID anchors) were rewritten to relative spec paths.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function Repair-OpenSpecSectionNumberLinks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown

    # In-document links like [5.3.8](#Section_guid) often have no guid->section mapping
    # (Word bookmark pair missing in converted output). When the link text is a section
    # number, rewrite to [5.3.8](#Section_5.3.8) so they resolve to our injected anchors.
    $pattern = [regex]::new(
        '\[(?<num>\d+(?:\.\d+)*)\]\(#Section_[a-f0-9]{32}\)',
        [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    )
    $rewriteCount = $pattern.Matches($result).Count
    $result = $pattern.Replace($result, {
        param($m)
        $num = $m.Groups['num'].Value
        "[$num](#Section_$num)"
    })

    if ($rewriteCount -gt 0) {
        [void]$issues.Add([pscustomobject]@{
            Type = 'SectionNumberLinksRepaired'
            Severity = 'Info'
            Count = $rewriteCount
            Reason = 'In-document section links (GUID anchors) were rewritten to section number anchors.'
        })
    }

    [pscustomobject]@{
        Markdown = $result
        Issues = $issues.ToArray()
    }
}

function Resolve-OpenSpecLinkTarget {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Url,

        [Parameter(Mandatory)]
        [string]$CurrentProtocolId
    )

    $decoded = [System.Net.WebUtility]::UrlDecode($Url)
    $fragment = ''

    if ($decoded -match '^(?<base>[^#]+)#(?<frag>.+)$') {
        $decoded = $Matches['base']
        $fragment = '#' + $Matches['frag']
    }

    if ($decoded -match '^\[(?<id>(?:MS|MC)-[A-Z0-9-]+)\]\.(?:pdf|docx)$') {
        $targetId = $Matches['id'].ToUpperInvariant()
        if ($targetId -eq $CurrentProtocolId.ToUpperInvariant()) {
            return [pscustomobject]@{ Url = if ($fragment) { $fragment } else { '#' }; Rewritten = $true }
        }

        return [pscustomobject]@{ Url = "../$targetId/$targetId.md$fragment"; Rewritten = $true }
    }

    if ($decoded -match '(?i)(?:https?://learn\.microsoft\.com)?/?openspecs/windows_protocols/(?<slug>(?:ms|mc)-[a-z0-9-]+)(?:/[^#?]+)?') {
        $targetId = $Matches['slug'].ToUpperInvariant()
        if ($targetId -eq $CurrentProtocolId.ToUpperInvariant()) {
            return [pscustomobject]@{ Url = if ($fragment) { $fragment } else { '#' }; Rewritten = $true }
        }

        return [pscustomobject]@{ Url = "../$targetId/$targetId.md$fragment"; Rewritten = $true }
    }

    if ($decoded -match '(?i)%5b(?<id>(?:MS|MC)-[A-Z0-9-]+)%5d\.(?:pdf|docx)$') {
        $targetId = $Matches['id'].ToUpperInvariant()
        if ($targetId -eq $CurrentProtocolId.ToUpperInvariant()) {
            return [pscustomobject]@{ Url = if ($fragment) { $fragment } else { '#' }; Rewritten = $true }
        }

        return [pscustomobject]@{ Url = "../$targetId/$targetId.md$fragment"; Rewritten = $true }
    }

    return [pscustomobject]@{ Url = $Url; Rewritten = $false }
}

function Convert-OpenSpecInlineHtmlToMarkdown {
    [CmdletBinding()]
    param(
        [Parameter()]
        [AllowEmptyString()]
        [string]$Text
    )

    $result = $Text
    $newLine = [Environment]::NewLine

    $result = [regex]::Replace($result, '(?is)<br\s*/?>', $newLine)
    $result = [regex]::Replace($result, '(?is)<strong\b[^>]*>(?<v>.*?)</strong>', '**${v}**')
    $result = [regex]::Replace($result, '(?is)<b\b[^>]*>(?<v>.*?)</b>', '**${v}**')
    $result = [regex]::Replace($result, '(?is)<em\b[^>]*>(?<v>.*?)</em>', '*${v}*')
    $result = [regex]::Replace($result, '(?is)<i\b[^>]*>(?<v>.*?)</i>', '*${v}*')
    $result = [regex]::Replace($result, '(?is)<code\b[^>]*>(?<v>.*?)</code>', '`${v}`')
    $result = [regex]::Replace($result, '(?is)<p\b[^>]*>(?<v>.*?)</p>', '${v}')
    $result = [regex]::Replace($result, '(?is)</?span\b[^>]*>', '')

    return [System.Net.WebUtility]::HtmlDecode($result)
}

function Remove-OpenSpecStandaloneTableTagLines {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Text
    )

    $result = $Text
    $result = [regex]::Replace(
        $result,
        '(?im)^\s*</?(?:table|tbody|thead|tr|td|th|colgroup|col)\b[^>]*>\s*$',
        ''
    )

    return $result
}

function Remove-OpenSpecDocumentIndex {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $result = $Markdown
    $removed = $false

    # Match the back-of-document index section: heading "# N Index" (e.g. "# 8 Index", "# 9 Index").
    # Do not match "Index of Security Parameters" or other subsections.
    $indexHeadingRegex = [regex]::new('(?m)^# \d+ Index\s*$')
    $match = $indexHeadingRegex.Match($result)
    if ($match.Success) {
        $result = $result.Substring(0, $match.Index).TrimEnd()
        $removed = $true

        # Remove any trailing anchor line(s) that only served the index heading (optional).
        $trailingAnchorRegex = [regex]::new('(?ms)(\r?\n)(<a\s+id="[^"]+"></a>\s*)+$')
        $result = $trailingAnchorRegex.Replace($result, '')

        # Remove the "N Index" TOC entry so we don't leave a dead link.
        $result = [regex]::Replace($result, '(?m)^\s*\[\d+ Index\]\(#Section_\d+\)\s*\r?\n', '')
    }

    [pscustomobject]@{
        Markdown = $result
        Removed  = $removed
    }
}

function Set-OpenSpecDocumentTitle {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown,

        [Parameter(Mandatory)]
        [string]$CurrentProtocolId
    )

    $result = $Markdown
    $normalized = $false

    # Replace leading "**[MS-XXX]:**\n\n**Full Title**" with a single "# [MS-XXX]: Full Title" H1.
    $escapedId = [regex]::Escape($CurrentProtocolId)
    $titlePattern = [regex]::new(
        '^\s*\*\*(?:\[' + $escapedId + '\]|' + $escapedId + ')\s*:\s*\*\*\s*\r?\n\r?\n\*\*(?<title>[^*]+)\*\*',
        [System.Text.RegularExpressions.RegexOptions]::Multiline
    )
    $match = $titlePattern.Match($result)
    if ($match.Success) {
        $title = $match.Groups['title'].Value.Trim()
        $replacement = "# [$CurrentProtocolId]: $title"
        $result = $result.Substring(0, $match.Index) + $replacement + $result.Substring($match.Index + $match.Length)
        $normalized = $true
    }

    [pscustomobject]@{
        Markdown    = $result
        Normalized  = $normalized
    }
}

function Remove-OpenSpecFrontMatterBoilerplate {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $result = $Markdown
    $removed = $false
    $newLine = [Environment]::NewLine

    # Block from "Intellectual Property Rights Notice" (or similar) through the revision table, ending before "Table of Contents".
    $blockRegex = [regex]::new(
        '(?s)(\r?\n)(Intellectual Property Rights Notice.*?)(\r?\n\r?\n)(Table of Contents)',
        [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    )
    $match = $blockRegex.Match($result)
    if ($match.Success) {
        $blockContent = $match.Groups[2].Value
        $lastUpdated = $null
        $dateRowRegex = [regex]::new('\|\s*(\d{1,2}/\d{1,2}/\d{4})\s*\|')
        $dateMatches = $dateRowRegex.Matches($blockContent)
        if ($dateMatches.Count -gt 0) {
            $lastMatch = $dateMatches[$dateMatches.Count - 1]
            $lastUpdated = $lastMatch.Groups[1].Value
        }
        $replacement = $match.Groups[1].Value
        if ($lastUpdated) {
            $replacement += "Last updated: $lastUpdated" + $newLine + $newLine
        } else {
            $replacement += $match.Groups[3].Value
        }
        $replacement += $match.Groups[4].Value
        $result = $result.Substring(0, $match.Index) + $replacement + $result.Substring($match.Index + $match.Length)
        $removed = $true
    }

    [pscustomobject]@{
        Markdown = $result
        Removed  = $removed
    }
}

function Add-OpenSpecSectionAnchors {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $newLine = [Environment]::NewLine
    $lines = [System.Collections.Generic.List[string]]::new()
    $injectedCount = 0

    # Heading pattern: optional leading whitespace, 1-6 hashes, space, section number (e.g. 1, 1.1, 2.2.2.2.1.1.1), space, rest.
    $headingRegex = [regex]::new('^\s*(#{1,6})\s+(\d+(?:\.\d+)*)\s+(.+)$')

    $i = 0
    $lineArray = $Markdown -split '\r?\n'
    while ($i -lt $lineArray.Count) {
        $line = $lineArray[$i]
        $headingMatch = $headingRegex.Match($line)
        if ($headingMatch.Success) {
            $sectionNum = $headingMatch.Groups[2].Value
            $anchorId = "Section_$sectionNum"
            $anchorLine = "<a id=`"$anchorId`"></a>"
            $prevLine = if ($lines.Count -gt 0) { $lines[$lines.Count - 1].Trim() } else { '' }
            if ($prevLine -ne $anchorLine) {
                [void]$lines.Add($anchorLine)
                $injectedCount++
            }
        }
        [void]$lines.Add($line)
        $i++
    }

    [pscustomobject]@{
        Markdown       = $lines -join $newLine
        InjectedCount  = $injectedCount
    }
}

function Add-OpenSpecMissingSectionAnchorsFromToc {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $newLine = [Environment]::NewLine
    $lines = [System.Collections.Generic.List[string]]::new($Markdown -split '\r?\n')
    $injectedCount = 0

    # Collect (sectionNum, title) from TOC lines: [N.N Title](#Section_N.N)
    $tocEntryRegex = [regex]::new('^\s*\[(?<num>\d+(?:\.\d+)*)\s+(?<title>[^\]]*)\]\(#Section_(?<sec>\d+(?:\.\d+)*)\)\s*$')
    $tocEntries = [System.Collections.Generic.List[object]]::new()
    foreach ($line in $lines) {
        $m = $tocEntryRegex.Match($line)
        if ($m.Success -and $m.Groups['num'].Value -eq $m.Groups['sec'].Value) {
            [void]$tocEntries.Add([pscustomobject]@{ SectionNum = $m.Groups['num'].Value; Title = $m.Groups['title'].Value.Trim() })
        }
    }

    # Which Section_N.N anchors already exist?
    $existingAnchors = [System.Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
    foreach ($line in $lines) {
        if ($line -match '^\s*<a\s+id="(Section_\d+(?:\.\d+)*)"\s*></a>\s*$') {
            [void]$existingAnchors.Add($Matches[1])
        }
    }

    # Missing: (sectionNum, title) from TOC where anchor is missing. Keep TOC order.
    $missingList = [System.Collections.Generic.List[object]]::new()
    $seen = [System.Collections.Generic.HashSet[string]]::new()
    foreach ($e in $tocEntries) {
        $id = "Section_$($e.SectionNum)"
        if (-not $existingAnchors.Contains($id) -and -not $seen.Contains($id)) {
            [void]$seen.Add($id)
            [void]$missingList.Add([pscustomobject]@{ SectionNum = $e.SectionNum; Title = $e.Title })
        }
    }
    if ($missingList.Count -eq 0) {
        return [pscustomobject]@{ Markdown = $Markdown; InjectedCount = 0 }
    }

    # Assign each missing section to the first line (in doc order) that matches its title.
    # Prefer heading lines that contain the title; else use a non-heading line that equals the title exactly.
    $lineIndexToSection = @{}
    $assignedLines = [System.Collections.Generic.HashSet[int]]::new()
    foreach ($entry in $missingList) {
        $title = $entry.Title
        if ([string]::IsNullOrWhiteSpace($title)) { continue }
        $found = $false
        for ($i = 0; $i -lt $lines.Count -and -not $found; $i++) {
            if ($assignedLines.Contains($i)) { continue }
            $line = $lines[$i]
            $lineTrim = $line.Trim()
            $isHeading = $line -match '^\s*#{1,6}\s+(.+)$'
            $content = if ($isHeading) { $Matches[1].Trim() } else { $lineTrim }
            $matchesTitle = $content -like "*$title*"
            $exactMatch = $content -ceq $title
            if (-not $matchesTitle -and -not $exactMatch) { continue }
            if (-not $isHeading -and -not $exactMatch) { continue }
            $lineIndexToSection[$i] = $entry.SectionNum
            [void]$assignedLines.Add($i)
            $found = $true
        }
    }

    # Insert anchors in reverse line order so indices stay valid.
    foreach ($idx in ($lineIndexToSection.Keys | Sort-Object -Descending)) {
        $sectionNum = $lineIndexToSection[$idx]
        $anchorId = "Section_$sectionNum"
        $lines.Insert($idx, "<a id=`"$anchorId`"></a>")
        $injectedCount++
    }

    [pscustomobject]@{
        Markdown       = $lines -join $newLine
        InjectedCount  = $injectedCount
    }
}

function Repair-OpenSpecSectionGuidLinksByHeadingMatch {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $newLine = [Environment]::NewLine
    $lineArray = $Markdown -split '\r?\n'
    $titleToSection = @{}

    for ($i = 0; $i -lt $lineArray.Count; $i++) {
        $line = $lineArray[$i]
        if ($line -match '^\s*<a\s+id="(Section_\d+(?:\.\d+)*)"\s*></a>\s*$') {
            $sectionId = $Matches[1]
            $sectionNum = $sectionId -replace '^Section_', ''
            $nextLine = if ($i + 1 -lt $lineArray.Count) { $lineArray[$i + 1] } else { '' }
            if ($nextLine -match '^\s*#{1,6}\s+(?<title>.+)$') {
                $title = $Matches['title'].Trim()
                $norm = ($title -replace '\s+', ' ').Trim()
                if (-not $titleToSection.ContainsKey($norm)) { $titleToSection[$norm] = $sectionId }
                $withoutNum = $title -replace '^\d+(?:\.\d+)*\s+', ''
                $normWithout = ($withoutNum -replace '\s+', ' ').Trim()
                if ($normWithout -and -not $titleToSection.ContainsKey($normWithout)) { $titleToSection[$normWithout] = $sectionId }
            }
        }
    }

    $guidLinkRegex = [regex]::new('\[(?<text>[^\]]+)\]\(#Section_[a-fA-F0-9]{32}\)')
    $linksRepaired = 0
    foreach ($m in $guidLinkRegex.Matches($Markdown)) {
        $norm = ($m.Groups['text'].Value -replace '\*+', '' -replace '\s+', ' ').Trim()
        if ($titleToSection.ContainsKey($norm) -or $titleToSection.ContainsKey($m.Groups['text'].Value.Trim())) { $linksRepaired++ }
    }
    $result = $guidLinkRegex.Replace($Markdown, {
        param($m)
        $rawText = $m.Groups['text'].Value
        $norm = ($rawText -replace '\*+', '' -replace '\s+', ' ').Trim()
        $sectionId = $null
        if ($titleToSection.ContainsKey($norm)) { $sectionId = $titleToSection[$norm] }
        if (-not $sectionId -and $titleToSection.ContainsKey($rawText.Trim())) { $sectionId = $titleToSection[$rawText.Trim()] }
        if ($sectionId) { "[$rawText](#$sectionId)" } else { $m.Value }
    })

    [pscustomobject]@{
        Markdown       = $result
        LinksRepaired  = $linksRepaired
    }
}

function Add-OpenSpecGlossaryAnchorsAndRepairLinks {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $newLine = [Environment]::NewLine
    $lineArray = [System.Collections.Generic.List[string]]::new($Markdown -split '\r?\n')
    $termToSlug = @{}
    $insertedSlugs = @{}
    $injectedCount = 0

    # Find the Glossary section: heading like "1.1 Glossary" or "## 1.1 Glossary".
    $glossaryHeadingRegex = [regex]::new('^\s*(#{1,6})\s+(?<num>\d+(?:\.\d+)*)\s+Glossary\s*$')
    $anyHeadingRegex = [regex]::new('^\s*(#+)\s+.+$')
    $glossaryDefRegex = [regex]::new('^\s*\*\*(?<term>[^*]+)\*\*\s*:\s*')

    $i = 0
    $inGlossary = $false
    $glossaryLevel = 0
    while ($i -lt $lineArray.Count) {
        $line = $lineArray[$i]
        $headMatch = $glossaryHeadingRegex.Match($line)
        if ($headMatch.Success) {
            $inGlossary = $true
            $glossaryLevel = $headMatch.Groups[1].Value.Length
            $i++
            continue
        }
        if ($inGlossary) {
            $headOnly = $anyHeadingRegex.Match($line)
            if ($headOnly.Success -and $headOnly.Groups[1].Value.Length -le $glossaryLevel) {
                $inGlossary = $false
            }
        }
        if ($inGlossary) {
            $defMatch = $glossaryDefRegex.Match($line)
            if ($defMatch.Success) {
                $term = $defMatch.Groups['term'].Value.Trim()
                $slug = $term -replace '\s+', '-' -replace '[^\w\-]', '' -replace '-+', '-' -replace '^-|-$', ''
                $slug = $slug.ToLowerInvariant()
                if ([string]::IsNullOrWhiteSpace($slug)) { $slug = "term-$i" }
                $slug = "gt_$slug"
                if (-not $insertedSlugs.ContainsKey($slug)) {
                    $insertedSlugs[$slug] = $true
                    $anchorLine = "<a id=`"$slug`"></a>"
                    $lineArray.Insert($i, $anchorLine)
                    $injectedCount++
                    $i++
                }
                $normalizedTerm = $term.Trim()
                $termToSlug[$normalizedTerm] = $slug
                if ($term -match '^(.+?)\s+\(([^)]+)\)\s*$') {
                    $abbrev = $Matches[2].Trim()
                    $termBeforeParen = $Matches[1].Trim()
                    $termToSlug[$abbrev] = $slug
                    $termToSlug[$termBeforeParen] = $slug
                    if ($abbrev.Length -gt 0 -and -not $abbrev.EndsWith('s')) {
                        $termToSlug["$abbrev`s"] = $slug
                    }
                }
                if ($normalizedTerm.EndsWith('s') -eq $false -and $normalizedTerm.Length -gt 1) {
                    $termToSlug["$normalizedTerm`s"] = $slug
                }
            }
        }
        $i++
    }

    $result = $lineArray -join $newLine

    # Rewrite [text](#gt_guid) to [text](#gt_slug) using link text -> slug map.
    $linkRegex = [regex]::new('\[(?<text>[^\]]+)\]\(#gt_[a-f0-9\-]{36}\)')
    $linksRepaired = 0
    foreach ($match in $linkRegex.Matches($result)) {
        $norm = ($match.Groups['text'].Value -replace '\*+', '').Trim()
        if ($termToSlug.ContainsKey($norm) -or $termToSlug.ContainsKey($match.Groups['text'].Value.Trim())) {
            $linksRepaired++
        }
    }
    $result = $linkRegex.Replace($result, {
        param($m)
        $rawText = $m.Groups['text'].Value
        $normalized = ($rawText -replace '\*+', '').Trim()
        $slug = $null
        if ($termToSlug.ContainsKey($normalized)) {
            $slug = $termToSlug[$normalized]
        }
        elseif ($termToSlug.ContainsKey($rawText.Trim())) {
            $slug = $termToSlug[$rawText.Trim()]
        }
        if ($slug) {
            "[$rawText](#$slug)"
        }
        else {
            $m.Value
        }
    })

    [pscustomobject]@{
        Markdown         = $result
        AnchorsInjected  = $injectedCount
        LinksRepaired    = $linksRepaired
    }
}
