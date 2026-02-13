function Compare-OpenSpecToLiveHtml {
    <#
    .SYNOPSIS
        Compares converted markdown structure to the live HTML spec page on learn.microsoft.com.
    .DESCRIPTION
        For each converted spec, fetches the live spec page HTML and extracts its structure
        (headings, section IDs). Compares with the converted markdown structure and reports
        missing sections, heading/ID mismatches, and suggested manual review items.
    #>
    [CmdletBinding()]
    param(
        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'converted-specs'),

        [string[]]$ProtocolId
    )

    if (-not (Test-Path -LiteralPath $OutputPath)) {
        throw "Output path '$OutputPath' was not found."
    }

    $catalog = @{}
    try {
        foreach ($e in (Get-OpenSpecCatalog)) {
            $catalog[$e.ProtocolId] = $e
            $norm = $e.ProtocolId -replace '-', '_'
            if (-not $catalog[$norm]) { $catalog[$norm] = $e }
        }
    }
    catch {
        Write-Warning "Could not fetch catalog: $($_.Exception.Message)"
    }

    $reports = Get-OpenSpecConversionReport -OutputPath $OutputPath -ProtocolId $ProtocolId
    $results = New-Object System.Collections.Generic.List[object]

    foreach ($report in $reports) {
        $protocolId = $report.ProtocolId
        $mdPath = $report.MarkdownPath
        $markdown = ''
        if (Test-Path -LiteralPath $mdPath) {
            $markdown = Get-Content -LiteralPath $mdPath -Raw -ErrorAction SilentlyContinue
        }

        $mdHeadings = New-Object System.Collections.Generic.List[object]
        $mdAnchors = New-Object System.Collections.Generic.HashSet[string]([System.StringComparer]::OrdinalIgnoreCase)
        $mdHeadingRegex = [regex]::new('(?m)^(#{1,6})\s+(.+)$')
        foreach ($m in $mdHeadingRegex.Matches($markdown)) {
            $level = $m.Groups[1].Value.Length
            $text = $m.Groups[2].Value.Trim()
            [void]$mdHeadings.Add([pscustomobject]@{ Level = $level; Text = $text })
        }
        foreach ($m in [regex]::Matches($markdown, '<a\s+id="([^"]+)"\s*>\s*</a>')) {
            [void]$mdAnchors.Add($m.Groups[1].Value)
        }

        $liveHeadings = New-Object System.Collections.Generic.List[object]
        $liveAnchors = New-Object System.Collections.Generic.HashSet[string]([System.StringComparer]::OrdinalIgnoreCase)
        $liveUrl = $null
        $fetchError = $null

        $entry = $catalog[$protocolId]
        if ($entry) {
            $liveUrl = $entry.SpecPageUrl
            try {
                $response = Invoke-OpenSpecRequest -Uri $liveUrl
                $html = $response.Content
                $hRegex = [regex]::new('(?is)<h([1-6])(?:\s[^>]*)?\s+id="([^"]+)"[^>]*>([^<]*)</h\1>')
                foreach ($m in $hRegex.Matches($html)) {
                    $level = [int]$m.Groups[1].Value
                    $id = $m.Groups[2].Value
                    $text = (ConvertFrom-OpenSpecHtml -Html $m.Groups[3].Value).Trim()
                    [void]$liveHeadings.Add([pscustomobject]@{ Level = $level; Id = $id; Text = $text })
                    [void]$liveAnchors.Add($id)
                }
                $altHRegex = [regex]::new('(?is)<h([1-6])[^>]*>([^<]*)</h\1>')
                foreach ($m in $altHRegex.Matches($html)) {
                    $level = [int]$m.Groups[1].Value
                    $text = (ConvertFrom-OpenSpecHtml -Html $m.Groups[2].Value).Trim()
                    if ($text.Length -gt 0 -and ($liveHeadings.Count -eq 0 -or $liveHeadings[-1].Text -ne $text)) {
                        [void]$liveHeadings.Add([pscustomobject]@{ Level = $level; Id = $null; Text = $text })
                    }
                }
            }
            catch {
                $fetchError = $_.Exception.Message
            }
        }
        else {
            $fetchError = "Protocol not found in catalog"
        }

        $missingInMd = New-Object System.Collections.Generic.List[string]
        $missingInLive = New-Object System.Collections.Generic.List[string]
        $mdAnchorList = @($mdAnchors)
        foreach ($aid in $mdAnchorList) {
            if ($aid -notmatch '^_Toc\d+$' -and $liveAnchors.Count -gt 0 -and -not $liveAnchors.Contains($aid)) {
                [void]$missingInLive.Add($aid)
            }
        }
        foreach ($aid in @($liveAnchors)) {
            if (-not $mdAnchors.Contains($aid)) {
                [void]$missingInMd.Add($aid)
            }
        }

        $suggestReview = $false
        if ($fetchError) { $suggestReview = $true }
        if ($missingInMd.Count -gt 5 -or $missingInLive.Count -gt 5) { $suggestReview = $true }
        if ($liveHeadings.Count -eq 0 -and $mdHeadings.Count -gt 0) { $suggestReview = $true }

        [void]$results.Add([pscustomobject]@{
            PSTypeName           = 'AwakeCoding.OpenSpecs.LiveHtmlCompareResult'
            ProtocolId           = $protocolId
            MarkdownPath         = $mdPath
            LiveUrl              = $liveUrl
            FetchError           = $fetchError
            MarkdownHeadingCount = $mdHeadings.Count
            MarkdownAnchorCount  = $mdAnchors.Count
            LiveHeadingCount     = $liveHeadings.Count
            LiveAnchorCount      = $liveAnchors.Count
            MissingInMarkdown    = @($missingInMd)
            MissingInLive        = @($missingInLive)
            SuggestManualReview  = $suggestReview
            IssueCount           = $report.IssueCount
        })
    }

    $results
}
