function ConvertFrom-OpenSpecHtml {
    [CmdletBinding()]
    param(
        [Parameter()]
        [AllowEmptyString()]
        [string]$Html
    )

    if ([string]::IsNullOrEmpty($Html)) {
        return ''
    }

    $withoutTags = [regex]::Replace($Html, '<[^>]+>', ' ')
    $decoded = [System.Net.WebUtility]::HtmlDecode($withoutTags)
    $normalized = [regex]::Replace($decoded, '\s+', ' ')
    return $normalized.Trim()
}
