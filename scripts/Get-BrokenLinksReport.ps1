<#
.SYNOPSIS
    Reports markdown link targets that have no matching anchor in the document.
.DESCRIPTION
    Scans one or more .md files for [text](#fragment) links and <a id="..."></a> anchors,
    then lists link targets with no matching anchor, grouped by category (gt_, Section_guid, Section_N.N).
.EXAMPLE
    .\Get-BrokenLinksReport.ps1 -Path artifacts\converted-specs\MS-RDPBCGR\MS-RDPBCGR.md
.EXAMPLE
    .\Get-BrokenLinksReport.ps1 -Path artifacts\converted-specs -OutputReport
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$Path,
    [switch]$OutputReport
)

$ErrorActionPreference = 'Stop'
$files = if (Test-Path -LiteralPath $Path -PathType Container) {
    Get-ChildItem -LiteralPath $Path -Recurse -Filter '*.md' -File | Select-Object -ExpandProperty FullName
} elseif (Test-Path -LiteralPath $Path -PathType Leaf) {
    [System.IO.Path]::GetFullPath($Path)
} else {
    Write-Error "Path not found: $Path"
}

$linkRegex = [regex]::new('\]\(#([^)\)]+)\)')
$anchorRegex = [regex]::new('<a\s+id="([^"]+)"\s*></a>', 'IgnoreCase')

foreach ($mdPath in $files) {
    $content = Get-Content -LiteralPath $mdPath -Raw -Encoding UTF8
    $anchors = [System.Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
    foreach ($m in $anchorRegex.Matches($content)) {
        [void]$anchors.Add($m.Groups[1].Value)
    }
    $linkTargets = [System.Collections.Generic.Dictionary[string, [System.Collections.Generic.List[string]]]]::new([StringComparer]::OrdinalIgnoreCase)
    foreach ($m in $linkRegex.Matches($content)) {
        $target = $m.Groups[1].Value
        if (-not $linkTargets.ContainsKey($target)) {
            $linkTargets[$target] = [System.Collections.Generic.List[string]]::new()
        }
        $linkTargets[$target].Add($target) | Out-Null
    }
    $broken = [System.Collections.Generic.List[string]]::new()
    foreach ($t in $linkTargets.Keys) {
        if (-not $anchors.Contains($t)) {
            $broken.Add($t)
        }
    }
    $gt = [System.Collections.Generic.List[string]]::new()
    $sectionGuid = [System.Collections.Generic.List[string]]::new()
    $sectionNum = [System.Collections.Generic.List[string]]::new()
    foreach ($b in $broken) {
        if ($b -match '^gt_[a-f0-9\-]{36}$') { $gt.Add($b) }
        elseif ($b -match '^Section_[a-f0-9]{32}$') { $sectionGuid.Add($b) }
        elseif ($b -match '^Section_\d+(?:\.\d+)*$') { $sectionNum.Add($b) }
    }
    $protocolId = [System.IO.Path]::GetFileNameWithoutExtension($mdPath)
    $report = @"
# Broken Links Report: $protocolId

Generated from link targets that do not have a matching ``<a id="..."></a>`` in the document.

## Summary

| Category | Count | Description |
|----------|-------|-------------|
| **gt_ GUID** | $($gt.Count) | Glossary links still using Word bookmark IDs |
| **Section_&lt;32hex&gt;** | $($sectionGuid.Count) | Section links using Word GUIDs |
| **Section_X.Y.Z** (numeric) | $($sectionNum.Count) | Section number links with no anchor in doc |
| **Other** | $($broken.Count - $gt.Count - $sectionGuid.Count - $sectionNum.Count) | Other unresolved fragments |
| **Total broken** | **$($broken.Count)** | Unique link targets with no matching anchor |

"@
    if ($gt.Count -gt 0) {
        $report += "`n## 1. Glossary (gt_) links - $($gt.Count) broken`n`n"
        $report += ($gt | Sort-Object | ForEach-Object { "- ``$_``" }) -join "`n"
        $report += "`n"
    }
    if ($sectionGuid.Count -gt 0) {
        $report += "`n## 2. Section GUID links - $($sectionGuid.Count) broken`n`n"
        $report += "Sample: " + (($sectionGuid | Sort-Object | Select-Object -First 5) -join ", ")
        if ($sectionGuid.Count -gt 5) { $report += " ... and $($sectionGuid.Count - 5) more" }
        $report += "`n"
    }
    if ($sectionNum.Count -gt 0) {
        $report += "`n## 3. Section number links - $($sectionNum.Count) broken`n`n"
        $report += "Sample: " + (($sectionNum | Sort-Object | Select-Object -First 10) -join ", ")
        if ($sectionNum.Count -gt 10) { $report += " ... and $($sectionNum.Count - 10) more" }
        $report += "`n"
    }
    Write-Host "=== $protocolId ==="
    Write-Host "Broken: $($broken.Count) (gt_: $($gt.Count), Section_guid: $($sectionGuid.Count), Section_N.N: $($sectionNum.Count))"
    if ($OutputReport) {
        $reportPath = [System.IO.Path]::Combine([System.IO.Path]::GetDirectoryName($mdPath), 'broken-links-report.md')
        $report | Set-Content -LiteralPath $reportPath -Encoding UTF8 -NoNewline
        Write-Host "Report written: $reportPath"
    }
}
