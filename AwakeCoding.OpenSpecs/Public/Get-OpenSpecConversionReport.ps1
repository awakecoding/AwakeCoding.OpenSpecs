function Get-OpenSpecConversionReport {
    [CmdletBinding()]
    param(
        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'converted-specs'),

        [string[]]$ProtocolId
    )

    if (-not (Test-Path -LiteralPath $OutputPath)) {
        throw "Output path '$OutputPath' was not found."
    }

    $reports = Get-ChildItem -Path $OutputPath -Recurse -Filter 'conversion-report.json' -File

    foreach ($reportFile in $reports) {
        $report = Get-Content -LiteralPath $reportFile.FullName -Raw | ConvertFrom-Json
        if ($ProtocolId -and ($report.ProtocolId -notin $ProtocolId)) {
            continue
        }

        $infoCount = 0
        $warningCount = 0
        $errorCount = 0

        if ($report.PSObject.Properties['InfoCount']) { $infoCount = [int]$report.InfoCount }
        if ($report.PSObject.Properties['WarningCount']) { $warningCount = [int]$report.WarningCount }
        if ($report.PSObject.Properties['ErrorCount']) { $errorCount = [int]$report.ErrorCount }

        if ($infoCount -eq 0 -and $warningCount -eq 0 -and $errorCount -eq 0 -and $report.PSObject.Properties['Issues']) {
            foreach ($issue in @($report.Issues)) {
                $severity = 'Warning'
                if ($issue.PSObject.Properties['Severity'] -and -not [string]::IsNullOrWhiteSpace($issue.Severity)) {
                    $severity = [string]$issue.Severity
                }

                switch -Regex ($severity) {
                    '^(?i)info$' { $infoCount++ ; break }
                    '^(?i)error$' { $errorCount++ ; break }
                    default { $warningCount++ ; break }
                }
            }
        }

        $headlineIssueCount = if ($report.PSObject.Properties['IssueCount']) { [int]$report.IssueCount } else { ($warningCount + $errorCount) }

        [pscustomobject]@{
            PSTypeName = 'AwakeCoding.OpenSpecs.ConversionReport'
            ProtocolId = $report.ProtocolId
            SourceFormat = $report.SourceFormat
            Strategy = $report.Strategy
            IssueCount = $headlineIssueCount
            InfoCount = $infoCount
            WarningCount = $warningCount
            ErrorCount = $errorCount
            GeneratedAtUtc = $report.GeneratedAtUtc
            MarkdownPath = $report.MarkdownPath
            ReportPath = $reportFile.FullName
        }
    }
}
