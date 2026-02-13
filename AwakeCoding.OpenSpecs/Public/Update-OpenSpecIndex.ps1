function Update-OpenSpecIndex {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Path
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Output directory not found: $Path"
    }

    $specDirs = Get-ChildItem -LiteralPath $Path -Directory | Sort-Object Name
    $entries = New-Object System.Collections.Generic.List[pscustomobject]

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

        # Extract the title from line 3 of the markdown.
        # Expected format:
        #   Line 1: **[MS-RDPECLIP]:**
        #   Line 2: (blank)
        #   Line 3: **Remote Desktop Protocol: Clipboard Virtual Channel Extension**
        $lines = Get-Content -LiteralPath $mdFile -TotalCount 5 -ErrorAction SilentlyContinue
        $title = ''
        if ($lines -and $lines.Count -ge 3) {
            $rawTitle = $lines[2]
            $title = $rawTitle -replace '^\*\*(.+)\*\*$', '$1'
            $title = $title.Trim()
        }

        if ([string]::IsNullOrWhiteSpace($title)) {
            $title = $specName
        }

        [void]$entries.Add([pscustomobject]@{
            Name  = $specName
            Title = $title
            Link  = "$specName/$mdFileName"
        })
    }

    $sb = New-Object System.Text.StringBuilder
    [void]$sb.AppendLine('# Microsoft Open Specifications')
    [void]$sb.AppendLine()
    [void]$sb.AppendLine("$($entries.Count) protocol specifications converted to Markdown.")
    [void]$sb.AppendLine()
    [void]$sb.AppendLine('| Protocol | Title |')
    [void]$sb.AppendLine('|---|---|')

    foreach ($entry in $entries) {
        [void]$sb.AppendLine("| [$($entry.Name)]($($entry.Link)) | $($entry.Title) |")
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
