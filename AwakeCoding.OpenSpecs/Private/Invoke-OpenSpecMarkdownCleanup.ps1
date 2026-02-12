function Invoke-OpenSpecMarkdownCleanup {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown,

        [Parameter(Mandatory)]
        [string]$CurrentProtocolId
    )

    $issues = New-Object System.Collections.Generic.List[object]
    $result = $Markdown

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

    $mathResult = ConvertTo-OpenSpecNormalizedMathText -Markdown $result
    $result = $mathResult.Markdown
    foreach ($issue in $mathResult.Issues) { [void]$issues.Add($issue) }

    $result = Convert-OpenSpecInlineHtmlToMarkdown -Text $result
    $result = Remove-OpenSpecStandaloneTableTagLines -Text $result
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
                "../$id/index.md$frag"
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

        return [pscustomobject]@{ Url = "../$targetId/index.md$fragment"; Rewritten = $true }
    }

    if ($decoded -match '(?i)(?:https?://learn\.microsoft\.com)?/?openspecs/windows_protocols/(?<slug>(?:ms|mc)-[a-z0-9-]+)(?:/[^#?]+)?') {
        $targetId = $Matches['slug'].ToUpperInvariant()
        if ($targetId -eq $CurrentProtocolId.ToUpperInvariant()) {
            return [pscustomobject]@{ Url = if ($fragment) { $fragment } else { '#' }; Rewritten = $true }
        }

        return [pscustomobject]@{ Url = "../$targetId/index.md$fragment"; Rewritten = $true }
    }

    if ($decoded -match '(?i)%5b(?<id>(?:MS|MC)-[A-Z0-9-]+)%5d\.(?:pdf|docx)$') {
        $targetId = $Matches['id'].ToUpperInvariant()
        if ($targetId -eq $CurrentProtocolId.ToUpperInvariant()) {
            return [pscustomobject]@{ Url = if ($fragment) { $fragment } else { '#' }; Rewritten = $true }
        }

        return [pscustomobject]@{ Url = "../$targetId/index.md$fragment"; Rewritten = $true }
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
