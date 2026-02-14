function Update-OpenSpecIndex {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Path,

        [switch]$UseCatalogTitles = $true,

        [switch]$IncludeDescription = $false
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Output directory not found: $Path"
    }

    $catalogMap = @{}
    if ($UseCatalogTitles) {
        try {
            $catalog = @(Get-OpenSpecCatalog)
            foreach ($entry in $catalog) {
                $catalogMap[$entry.ProtocolId] = $entry
                $normalized = $entry.ProtocolId -replace '-', '_'
                if (-not $catalogMap[$normalized]) { $catalogMap[$normalized] = $entry }
            }
        }
        catch {
            Write-Warning "Could not fetch catalog for titles: $($_.Exception.Message). Using markdown fallback."
        }
    }

    $specDirs = Get-ChildItem -LiteralPath $Path -Directory | Sort-Object Name
    $entries = New-Object System.Collections.Generic.List[pscustomobject]
    $boilerplatePatterns = @('Intellectual Property Rights', 'Open Specifications Documentation')

    foreach ($dir in $specDirs) {
        $specName = $dir.Name
        $mdFile = Join-Path -Path $dir.FullName -ChildPath "$specName.md"

        if (-not (Test-Path -LiteralPath $mdFile)) {
            $mdFile = Join-Path -Path $dir.FullName -ChildPath 'index.md'
        }

        if (-not (Test-Path -LiteralPath $mdFile)) {
            continue
        }

        $mdFileName = [System.IO.Path]::GetFileName($mdFile)
        $title = ''
        $description = ''

        $catalogEntry = $catalogMap[$specName]
        if ($catalogEntry) {
            $title = $catalogEntry.Title
            if ($IncludeDescription -and $catalogEntry.Description) {
                $description = $catalogEntry.Description
            }
        }

        if ([string]::IsNullOrWhiteSpace($title)) {
            $lines = Get-Content -LiteralPath $mdFile -TotalCount 30 -ErrorAction SilentlyContinue
            $protocolLabelRegex = [regex]::new('^\*\*\[?(?:MS|MC)-[A-Z0-9-]+\]?\s*:\s*\*\*$', 'IgnoreCase')
            $boldLineRegex = [regex]::new('^\*\*(.+)\*\*$')
            $foundLabel = $false
            foreach ($line in $lines) {
                if ($protocolLabelRegex.IsMatch($line.Trim())) {
                    $foundLabel = $true
                    continue
                }
                if ($foundLabel -and $boldLineRegex.IsMatch($line.Trim())) {
                    $candidate = ($line -replace '^\*\*(.+)\*\*$', '$1').Trim()
                    $isBoilerplate = $false
                    foreach ($pat in $boilerplatePatterns) {
                        if ($candidate -like "*$pat*") { $isBoilerplate = $true; break }
                    }
                    if (-not $isBoilerplate -and $candidate.Length -gt 2) {
                        $title = $candidate
                        break
                    }
                }
            }
        }

        if ([string]::IsNullOrWhiteSpace($title)) {
            $title = $specName
        }

        [void]$entries.Add([pscustomobject]@{
            Name        = $specName
            Title       = $title
            Description = $description
            Link        = "$specName/$mdFileName"
        })
    }

    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine('# Microsoft Open Specifications')
    [void]$sb.AppendLine()
    [void]$sb.AppendLine("$($entries.Count) protocol specifications converted to Markdown.")
    [void]$sb.AppendLine()

    if ($IncludeDescription) {
        [void]$sb.AppendLine('| Protocol | Title | Description |')
        [void]$sb.AppendLine('|---|---|---|')
        foreach ($entry in $entries) {
            $descEscaped = ($entry.Description -replace '\|', ', ' -replace '\r?\n', ' ').Trim()
            [void]$sb.AppendLine("| [$($entry.Name)]($($entry.Link)) | $($entry.Title) | $descEscaped |")
        }
    }
    else {
        [void]$sb.AppendLine('| Protocol | Title |')
        [void]$sb.AppendLine('|---|---|')
        foreach ($entry in $entries) {
            [void]$sb.AppendLine("| [$($entry.Name)]($($entry.Link)) | $($entry.Title) |")
        }
    }

    $readmePath = Join-Path -Path $Path -ChildPath 'README.md'
    $sb.ToString() | Set-Content -LiteralPath $readmePath -Encoding UTF8

    Write-Verbose "Generated index at $readmePath with $($entries.Count) entries."

    [pscustomobject]@{
        PSTypeName = 'AwakeCoding.OpenSpecs.IndexResult'
        Path       = $readmePath
        EntryCount = $entries.Count
    }
}
