<#
.SYNOPSIS
    Analyzes conversion quality: reports + live HTML comparison.
#>
param(
    [string]$OutputPath,
    [string]$ReportPath
)
$ErrorActionPreference = 'Stop'
$scriptDir = Split-Path -LiteralPath $MyInvocation.MyCommand.Path
$root = Split-Path -Parent $scriptDir
if (-not $OutputPath) { $OutputPath = Join-Path $root 'converted-specs' }
if (-not $ReportPath) { $ReportPath = Join-Path $root 'conversion-quality-report.json' }

Push-Location $root
try {
    Import-Module (Join-Path $root 'AwakeCoding.OpenSpecs') -Force

Write-Host '=== Conversion reports ==='
$reports = @(Get-OpenSpecConversionReport -OutputPath $OutputPath)
Write-Host "Total: $($reports.Count)"

$high = @($reports | Where-Object { $_.IssueCount -gt 5 })
$medium = @($reports | Where-Object { $_.IssueCount -gt 1 -and $_.IssueCount -le 5 })
$low = @($reports | Where-Object { $_.IssueCount -le 1 })
Write-Host "High issues (>5): $($high.Count)"
Write-Host "Medium issues (2-5): $($medium.Count)"
Write-Host "Low issues (0-1): $($low.Count)"

$failed = @($reports | Where-Object { -not (Test-Path $_.MarkdownPath -ErrorAction SilentlyContinue) })
$noMd = @($reports | Where-Object { $_.MarkdownPath -and -not (Test-Path $_.MarkdownPath -ErrorAction SilentlyContinue) })
$dirs = Get-ChildItem -LiteralPath $OutputPath -Directory -ErrorAction SilentlyContinue
$withMd = 0
$noMdList = @()
$dirs | ForEach-Object {
    $md = Join-Path $_.FullName "$($_.Name).md"
    if (-not (Test-Path $md)) { $md = Join-Path $_.FullName 'index.md' }
    if (Test-Path $md) { $withMd++ } else { $noMdList += $_.Name }
}
Write-Host "Specs with markdown file: $withMd / $($dirs.Count)"
if ($noMdList.Count -gt 0) {
    Write-Host "Missing markdown: $($noMdList -join ', ')"
}

if ($high.Count -gt 0) {
    Write-Host ''
    Write-Host '=== Top 15 by issue count ==='
    $reports | Sort-Object -Property IssueCount -Descending | Select-Object -First 15 |
        ForEach-Object { Write-Host "  $($_.ProtocolId): $($_.IssueCount) issues" }
}

Write-Host ''
Write-Host '=== Live HTML comparison (all specs) ==='
try {
    $compare = @(Compare-OpenSpecToLiveHtml -OutputPath $OutputPath)
} catch {
    Write-Warning "Compare failed: $_"
    $compare = @()
}
$suggestReview = @($compare | Where-Object { $_.SuggestManualReview })
Write-Host "Suggest manual review: $($suggestReview.Count) of $($compare.Count)"
$fetchErr = @($compare | Where-Object { $_.FetchError })
Write-Host "Fetch errors: $($fetchErr.Count)"
if ($fetchErr.Count -gt 0 -and $fetchErr.Count -le 10) {
    $fetchErr | ForEach-Object { Write-Host "  $($_.ProtocolId): $($_.FetchError)" }
} elseif ($fetchErr.Count -gt 10) {
    $fetchErr | Select-Object -First 5 | ForEach-Object { Write-Host "  $($_.ProtocolId): $($_.FetchError)" }
    Write-Host "  ... and $($fetchErr.Count - 5) more"
}
$liveNoHeadings = @($compare | Where-Object { $_.LiveHeadingCount -eq 0 -and $_.MarkdownHeadingCount -gt 0 })
Write-Host "Live page has no headings (but markdown does): $($liveNoHeadings.Count) - expected (Learn pages show download table, not full doc)"

Write-Host ''
Write-Host '=== Issue types from conversion reports ==='
$allIssues = @()
foreach ($r in $reports) {
    $convReportFile = $r.ReportPath
    if (Test-Path $convReportFile) {
        $json = Get-Content $convReportFile -Raw | ConvertFrom-Json
        if ($json.Issues) {
            foreach ($iss in @($json.Issues)) {
                $allIssues += [pscustomobject]@{ Type = $iss.Type; Severity = $iss.Severity }
            }
        }
    }
}
$byType = $allIssues | Group-Object Type | Sort-Object Count -Descending | Select-Object -First 15
$byType | ForEach-Object { Write-Host "  $($_.Name): $($_.Count)" }

# Export report
$report = @{
    GeneratedAt = [DateTime]::UtcNow.ToString('o')
    ConversionStats = @{
        TotalReports = $reports.Count
        HighIssues = $high.Count
        MediumIssues = $medium.Count
        LowIssues = $low.Count
        SpecsWithMarkdown = $withMd
        TotalSpecDirs = $dirs.Count
        MissingMarkdown = $noMdList
    }
    IssueTypes = @($byType | ForEach-Object { @{ Type = $_.Name; Count = $_.Count } })
    LiveComparison = @{
        TotalCompared = $compare.Count
        SuggestManualReview = $suggestReview.Count
        FetchErrors = $fetchErr.Count
        FetchErrorProtocols = @($fetchErr | ForEach-Object { $_.ProtocolId })
    }
}
$report | ConvertTo-Json -Depth 5 | Set-Content $ReportPath -Encoding UTF8
Write-Host ''
Write-Host "Report saved to: $ReportPath"
} finally {
    Pop-Location
}
