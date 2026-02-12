function Get-OpenSpecVersion {
    [CmdletBinding(DefaultParameterSetName = 'ByProtocolId')]
    param(
        [Parameter(ParameterSetName = 'ByProtocolId', Mandatory, ValueFromPipelineByPropertyName)]
        [string]$ProtocolId,

        [Parameter(ParameterSetName = 'BySpecPage', Mandatory, ValueFromPipelineByPropertyName)]
        [Alias('SpecPageUrl')]
        [string]$Uri,

        [switch]$AllVersions,

        [switch]$IncludePrevious
    )

    process {
        $specPageUrl = $Uri
        $resolvedProtocolId = $ProtocolId

        if (-not $resolvedProtocolId -and $specPageUrl -match '/openspecs/windows_protocols/(?<slug>(?:ms|mc)-[a-z0-9-]+)/') {
            $resolvedProtocolId = $Matches['slug'].ToUpperInvariant()
        }

        if (-not $specPageUrl) {
            $entry = Get-OpenSpecCatalog | Where-Object { $_.ProtocolId -eq $ProtocolId } | Select-Object -First 1
            if (-not $entry) {
                Write-Error "Protocol '$ProtocolId' was not found in the Windows Protocols technical documents catalog."
                return
            }

            $specPageUrl = $entry.SpecPageUrl
            $resolvedProtocolId = $entry.ProtocolId
        }

        $response = Invoke-OpenSpecRequest -Uri $specPageUrl
        $html = $response.Content

        $publishedIndex = $html.IndexOf('Published Version', [System.StringComparison]::OrdinalIgnoreCase)
        $previousIndex = $html.IndexOf('Previous Versions', [System.StringComparison]::OrdinalIgnoreCase)
        $rowMatches = [regex]::Matches($html, '(?is)<tr[^>]*>(?<row>.*?)</tr>')

        $items = New-Object System.Collections.Generic.List[object]

        foreach ($rowMatch in $rowMatches) {
            $rowHtml = $rowMatch.Groups['row'].Value
            $rowIndex = $rowMatch.Index

            $section = 'Unknown'
            if ($publishedIndex -ge 0 -and $rowIndex -gt $publishedIndex -and ($previousIndex -lt 0 -or $rowIndex -lt $previousIndex)) {
                $section = 'Published'
            }
            elseif ($previousIndex -ge 0 -and $rowIndex -gt $previousIndex) {
                $section = 'Previous'
            }

            if (-not $IncludePrevious -and $section -eq 'Previous') {
                continue
            }

            $pdfMatch = [regex]::Match($rowHtml, '(?is)href\s*=\s*["''](?<href>[^"'']+\.pdf(?:\?[^"'']*)?)["'']')
            $docxMatch = [regex]::Match($rowHtml, '(?is)href\s*=\s*["''](?<href>[^"'']+\.docx(?:\?[^"'']*)?)["'']')

            if (-not $pdfMatch.Success -and -not $docxMatch.Success) {
                continue
            }

            $rowText = ConvertFrom-OpenSpecHtml -Html $rowHtml
            $dateMatch = [regex]::Match($rowText, '(?<date>\b\d{1,2}/\d{1,2}/\d{4}\b|\b\d{4}-\d{2}-\d{2}\b|\b[A-Za-z]{3,9}\s+\d{1,2},\s+\d{4}\b)')
            $versionMatch = [regex]::Match($rowText, '(?<version>\b\d+\.\d+(?:\.\d+)?\b)')

            $publishedDate = $null
            if ($dateMatch.Success) {
                try {
                    $publishedDate = [datetime]::Parse($dateMatch.Groups['date'].Value, [System.Globalization.CultureInfo]::InvariantCulture)
                }
                catch {
                    $publishedDate = $null
                }
            }

            $items.Add([pscustomobject]@{
                PSTypeName = 'AwakeCoding.OpenSpecs.Version'
                ProtocolId = $resolvedProtocolId
                SpecPageUrl = $specPageUrl
                Section = $section
                PublishedDate = $publishedDate
                Version = if ($versionMatch.Success) { $versionMatch.Groups['version'].Value } else { $null }
                PdfUrl = if ($pdfMatch.Success) { Resolve-OpenSpecAbsoluteUrl -BaseUrl $specPageUrl -RelativeOrAbsoluteUrl ([System.Net.WebUtility]::HtmlDecode($pdfMatch.Groups['href'].Value)) } else { $null }
                DocxUrl = if ($docxMatch.Success) { Resolve-OpenSpecAbsoluteUrl -BaseUrl $specPageUrl -RelativeOrAbsoluteUrl ([System.Net.WebUtility]::HtmlDecode($docxMatch.Groups['href'].Value)) } else { $null }
                RawRowText = $rowText
            })
        }

        if ($items.Count -eq 0) {
            $fallbackLinks = [regex]::Matches($html, '(?is)href\s*=\s*["''](?<href>[^"'']+\.(?:pdf|docx)(?:\?[^"'']*)?)["'']')
            if ($fallbackLinks.Count -gt 0) {
                $pdf = ($fallbackLinks | Where-Object { $_.Groups['href'].Value -match '\.pdf(\?|$)' } | Select-Object -First 1).Groups['href'].Value
                $docx = ($fallbackLinks | Where-Object { $_.Groups['href'].Value -match '\.docx(\?|$)' } | Select-Object -First 1).Groups['href'].Value

                $items.Add([pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.Version'
                    ProtocolId = $resolvedProtocolId
                    SpecPageUrl = $specPageUrl
                    Section = 'Unknown'
                    PublishedDate = $null
                    Version = $null
                    PdfUrl = if ($pdf) { Resolve-OpenSpecAbsoluteUrl -BaseUrl $specPageUrl -RelativeOrAbsoluteUrl ([System.Net.WebUtility]::HtmlDecode($pdf)) } else { $null }
                    DocxUrl = if ($docx) { Resolve-OpenSpecAbsoluteUrl -BaseUrl $specPageUrl -RelativeOrAbsoluteUrl ([System.Net.WebUtility]::HtmlDecode($docx)) } else { $null }
                    RawRowText = 'Fallback page-level link extraction.'
                })
            }
        }

        $ordered = $items | Sort-Object -Property @{ Expression = { $_.Section -eq 'Published' ? 0 : 1 } }, @{ Expression = { $_.PublishedDate }; Descending = $true }
        if ($AllVersions) {
            $ordered
        }
        else {
            $ordered | Select-Object -First 1
        }
    }
}
