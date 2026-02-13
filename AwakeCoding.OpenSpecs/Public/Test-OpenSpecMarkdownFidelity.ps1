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
        [bool]$hasTables = $markdown -match '(?m)^\|.+\|\r?$'
        [bool]$hasNormative = $markdown -match '\b(MUST|SHOULD|MAY|REQUIRED|OPTIONAL)\b'

        # Anchor validation: check that TOC links resolve and anchors are correct
        $sectionAnchors = [regex]::Matches($markdown, '<a id="Section_[^"]+"></a>')
        $tocAnchors = [regex]::Matches($markdown, '<a id="_Toc\d+"></a>')
        $tocLinks = [regex]::Matches($markdown, '\]\(#Section_[^)]+\)')
        $numberedHeadings = [regex]::Matches($markdown, '(?m)^#{1,6} \d+')
        $boldPairs = [int]([regex]::Matches($markdown, '\*\*').Count / 2)

        [bool]$hasSectionAnchors = $sectionAnchors.Count -gt 0
        [bool]$noTocAnchors = $tocAnchors.Count -eq 0
        [bool]$hasTocLinks = $tocLinks.Count -gt 0
        [bool]$hasNumberedHeadings = $numberedHeadings.Count -gt 0

        # Validate that TOC links resolve to existing anchors
        $anchorIds = [System.Collections.Generic.HashSet[string]]::new(
            [System.StringComparer]::OrdinalIgnoreCase
        )
        foreach ($m in [regex]::Matches($markdown, '<a id="([^"]+)"></a>')) {
            [void]$anchorIds.Add($m.Groups[1].Value)
        }

        $unresolvedLinks = 0
        foreach ($m in [regex]::Matches($markdown, '\]\(#([^)]+)\)')) {
            $target = $m.Groups[1].Value
            if (-not $anchorIds.Contains($target)) {
                $unresolvedLinks++
            }
        }

        $pass = $hasHeadings -and $hasTables -and $hasSectionAnchors -and
                $noTocAnchors -and $hasTocLinks -and $hasNumberedHeadings

        [pscustomobject]@{
            PSTypeName = 'AwakeCoding.OpenSpecs.FidelityResult'
            ProtocolId = $report.ProtocolId
            Pass = $pass
            HasHeadings = $hasHeadings
            HasTables = $hasTables
            HasNormativeKeywords = $hasNormative
            HasSectionAnchors = $hasSectionAnchors
            SectionAnchorCount = $sectionAnchors.Count
            NoTocAnchors = $noTocAnchors
            TocAnchorCount = $tocAnchors.Count
            TocLinkCount = $tocLinks.Count
            NumberedHeadingCount = $numberedHeadings.Count
            BoldPairCount = $boldPairs
            UnresolvedLinkCount = $unresolvedLinks
            IssueCount = $report.IssueCount
            MarkdownPath = $report.MarkdownPath
            ReportPath = $report.ReportPath
        }
    }
}
