function ConvertTo-OpenSpecTextLayout {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Markdown
    )

    $lines = $Markdown -split "`r?`n"
    $outputLines = New-Object System.Collections.Generic.List[string]
    $issues = New-Object System.Collections.Generic.List[object]

    $index = 0
    while ($index -lt $lines.Count) {
        if ($lines[$index] -match '^\|') {
            $tableLines = New-Object System.Collections.Generic.List[string]
            $startIndex = $index

            while ($index -lt $lines.Count -and $lines[$index] -match '^\|') {
                [void]$tableLines.Add($lines[$index])
                $index++
            }

            $normalized = ConvertTo-OpenSpecPacketTable -TableLines $tableLines

            if ($normalized.IsPacketTable) {
                if ($normalized.KeepOriginalTable) {
                    $tableLines | ForEach-Object { $outputLines.Add($_) }

                    $issues.Add([pscustomobject]@{
                        Type = 'PacketLayoutUnchanged'
                        Severity = 'Info'
                        Line = $startIndex + 1
                        Reason = $normalized.Reason
                    })
                }
                elseif ($normalized.UseAsciiFallback) {
                    $outputLines.Add('```text')
                    $outputLines.Add('[Packet Layout - ASCII fallback]')
                    $tableLines | ForEach-Object { $outputLines.Add($_) }
                    $outputLines.Add('```')

                    $issues.Add([pscustomobject]@{
                        Type = 'PacketLayoutFallback'
                        Severity = 'Warning'
                        Line = $startIndex + 1
                        Reason = $normalized.Reason
                    })
                }
                else {
                    $normalized.Lines | ForEach-Object { $outputLines.Add($_) }
                }
            }
            else {
                $tableLines | ForEach-Object { $outputLines.Add($_) }
            }

            continue
        }

        $outputLines.Add($lines[$index])
        $index++
    }

    return [pscustomobject]@{
        PSTypeName = 'AwakeCoding.OpenSpecs.LayoutNormalizationResult'
        Markdown = ($outputLines -join "`r`n")
        Issues = $issues.ToArray()
    }
}

function ConvertTo-OpenSpecPacketTable {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [System.Collections.Generic.List[string]]$TableLines
    )

    if ($TableLines.Count -lt 2) {
        return [pscustomobject]@{
            IsPacketTable = $false
            UseAsciiFallback = $false
            KeepOriginalTable = $false
            Reason = $null
            Lines = $TableLines.ToArray()
        }
    }

    $headerCells = Split-OpenSpecTableRow -Line $TableLines[0]
    if ($headerCells.Count -eq 0) {
        return [pscustomobject]@{
            IsPacketTable = $false
            UseAsciiFallback = $false
            KeepOriginalTable = $false
            Reason = $null
            Lines = $TableLines.ToArray()
        }
    }

    $headerJoined = ($headerCells -join ' ').ToLowerInvariant()
    $isPacket = $headerJoined -match 'bit|byte|offset|field|length|size'
    if (-not $isPacket) {
        return [pscustomobject]@{
            IsPacketTable = $false
            UseAsciiFallback = $false
            KeepOriginalTable = $false
            Reason = $null
            Lines = $TableLines.ToArray()
        }
    }

    $hasValidRow = $false
    $normalizedRows = New-Object System.Collections.Generic.List[string]
    $normalizedRows.Add('| Bit Range | Field | Description |')
    $normalizedRows.Add('| --- | --- | --- |')

    for ($i = 2; $i -lt $TableLines.Count; $i++) {
        $cells = Split-OpenSpecTableRow -Line $TableLines[$i]
        if ($cells.Count -lt 2) {
            continue
        }

        $bitRange = ''
        $field = ''
        $description = ''

        foreach ($cell in $cells) {
            if ([string]::IsNullOrWhiteSpace($bitRange) -and $cell -match '(?:\d+\s*[-:]\s*\d+|\d+\s*\.\.\s*\d+|\bbit\b|\bbyte\b)') {
                $bitRange = $cell
                continue
            }

            if ([string]::IsNullOrWhiteSpace($field)) {
                $field = $cell
                continue
            }

            if ([string]::IsNullOrWhiteSpace($description)) {
                $description = $cell
            }
            else {
                $description = "$description $cell"
            }
        }

        if ([string]::IsNullOrWhiteSpace($field)) {
            continue
        }

        if ([string]::IsNullOrWhiteSpace($bitRange)) {
            $bitRange = 'Variable'
        }

        if ([string]::IsNullOrWhiteSpace($description)) {
            $description = '-'
        }

        $hasValidRow = $true
        $normalizedRows.Add(("| {0} | {1} | {2} |" -f (ConvertTo-OpenSpecEscapedPipeText $bitRange), (ConvertTo-OpenSpecEscapedPipeText $field), (ConvertTo-OpenSpecEscapedPipeText $description)))
    }

    if (-not $hasValidRow) {
        return [pscustomobject]@{
            IsPacketTable = $true
            UseAsciiFallback = $false
            KeepOriginalTable = $true
            Reason = 'No stable field rows could be reconstructed from packet table.'
            Lines = $TableLines.ToArray()
        }
    }

    return [pscustomobject]@{
        IsPacketTable = $true
        UseAsciiFallback = $false
        KeepOriginalTable = $false
        Reason = $null
        Lines = $normalizedRows.ToArray()
    }
}

function Split-OpenSpecTableRow {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Line
    )

    $trimmed = $Line.Trim()
    if ($trimmed.Length -lt 2) {
        return @()
    }

    if ($trimmed.StartsWith('|')) {
        $trimmed = $trimmed.Substring(1)
    }

    if ($trimmed.EndsWith('|')) {
        $trimmed = $trimmed.Substring(0, $trimmed.Length - 1)
    }

    return $trimmed.Split('|') | ForEach-Object { $_.Trim() }
}

function ConvertTo-OpenSpecEscapedPipeText {
    [CmdletBinding()]
    param(
        [Parameter()]
        [AllowEmptyString()]
        [string]$Value
    )

    if ($null -eq $Value) {
        return ''
    }

    return $Value.Replace('|', '\|').Trim()
}
