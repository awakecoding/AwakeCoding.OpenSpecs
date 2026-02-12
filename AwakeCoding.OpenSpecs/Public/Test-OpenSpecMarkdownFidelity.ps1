function Test-OpenSpecMarkdownFidelity {
    [CmdletBinding()]
    param(
        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'converted-specs'),

        [string[]]$ProtocolId
    )

    $reports = Get-OpenSpecConversionReport -OutputPath $OutputPath -ProtocolId $ProtocolId

    foreach ($report in $reports) {
        $markdown = ''
        if (Test-Path -LiteralPath $report.MarkdownPath) {
            $markdown = Get-Content -LiteralPath $report.MarkdownPath -Raw
        }

        [bool]$hasHeadings = $markdown -match '(?m)^#'
        [bool]$hasTables = $markdown -match '(?m)^\|.+\|$'
        [bool]$hasNormative = $markdown -match '\b(MUST|SHOULD|MAY|REQUIRED|OPTIONAL)\b'

        $pass = $hasHeadings -and $hasTables

        [pscustomobject]@{
            PSTypeName = 'AwakeCoding.OpenSpecs.FidelityResult'
            ProtocolId = $report.ProtocolId
            Pass = $pass
            HasHeadings = $hasHeadings
            HasTables = $hasTables
            HasNormativeKeywords = $hasNormative
            IssueCount = $report.IssueCount
            MarkdownPath = $report.MarkdownPath
            ReportPath = $report.ReportPath
        }
    }
}
