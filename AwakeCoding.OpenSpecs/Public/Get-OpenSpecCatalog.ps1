function Get-OpenSpecCatalog {
    [CmdletBinding()]
    param(
        [string]$Uri = 'https://learn.microsoft.com/en-us/openspecs/windows_protocols/MS-WINPROTLP/e36c976a-6263-42a8-b119-7a3cc41ddd2a'
    )

    $response = Invoke-OpenSpecRequest -Uri $Uri
    $html = $response.Content

    $rowRegex = [regex]::new('(?is)<tr[^>]*>(?<row>.*?)</tr>')
    $specLinkRegex = [regex]::new(
        '(?is)<a\b[^>]*href\s*=\s*["''](?<href>\.\./(?<slug>(?:ms|mc)-[a-z0-9-]+)/(?<guid>[0-9a-f-]{36}))(?:["''][^>]*)?>(?<text>.*?)</a>'
    )
    $idRegex = [regex]::new('\[(?<id>(?:MS|MC)-[A-Z0-9-]+)\]', 'IgnoreCase')
    $cellRegex = [regex]::new('(?is)<td[^>]*>(?<content>.*?)</td>')

    $seen = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
    $entries = New-Object System.Collections.Generic.List[object]

    foreach ($rowMatch in $rowRegex.Matches($html)) {
        $rowHtml = $rowMatch.Groups['row'].Value
        $linkMatch = $specLinkRegex.Match($rowHtml)
        if (-not $linkMatch.Success) {
            continue
        }

        $labelText = ConvertFrom-OpenSpecHtml -Html $linkMatch.Groups['text'].Value
        $idMatch = $idRegex.Match($labelText)
        if (-not $idMatch.Success) {
            continue
        }

        $protocolId = $idMatch.Groups['id'].Value.ToUpperInvariant()
        if (-not $seen.Add($protocolId)) {
            continue
        }

        $slug = $linkMatch.Groups['slug'].Value.ToLowerInvariant()
        $specPageUrl = Resolve-OpenSpecAbsoluteUrl -BaseUrl $Uri -RelativeOrAbsoluteUrl ([System.Net.WebUtility]::HtmlDecode($linkMatch.Groups['href'].Value))
        $title = ($labelText -replace '^\s*\[(?:MS|MC)-[A-Z0-9-]+\]\s*:\s*', '').Trim()
        if ([string]::IsNullOrWhiteSpace($title)) {
            $title = $protocolId
        }

        $description = ''
        $cells = [regex]::Matches($rowHtml, $cellRegex)
        if ($cells.Count -ge 2) {
            $description = (ConvertFrom-OpenSpecHtml -Html $cells[1].Groups['content'].Value).Trim()
        }

        $entries.Add([pscustomobject]@{
            PSTypeName = 'AwakeCoding.OpenSpecs.Entry'
            ProtocolId = $protocolId
            Title = $title
            Description = $description
            SpecPageUrl = $specPageUrl
            Slug = $slug
            SourcePage = $Uri
        })
    }

    if ($entries.Count -eq 0) {
        $protocolPattern = '\[(?<id>(?:MS|MC)-[A-Z0-9-]+)\]'
        $idMatches = [regex]::Matches($html, $protocolPattern, 'IgnoreCase')
        $protocolIds = $idMatches |
            ForEach-Object { $_.Groups['id'].Value.ToUpperInvariant() } |
            Sort-Object -Unique

        foreach ($protocolId in $protocolIds) {
            $entries.Add([pscustomobject]@{
                PSTypeName = 'AwakeCoding.OpenSpecs.Entry'
                ProtocolId = $protocolId
                Title = $protocolId
                Description = ''
                SpecPageUrl = "https://learn.microsoft.com/en-us/openspecs/windows_protocols/$($protocolId.ToLowerInvariant())"
                Slug = $protocolId.ToLowerInvariant()
                SourcePage = $Uri
            })
        }
    }

    $entries
}
