function Resolve-OpenSpecAbsoluteUrl {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$BaseUrl,

        [Parameter(Mandatory)]
        [string]$RelativeOrAbsoluteUrl
    )

    if ([System.Uri]::IsWellFormedUriString($RelativeOrAbsoluteUrl, [System.UriKind]::Absolute)) {
        return $RelativeOrAbsoluteUrl
    }

    $baseUri = [System.Uri]::new($BaseUrl)
    $resolved = [System.Uri]::new($baseUri, $RelativeOrAbsoluteUrl)
    return $resolved.AbsoluteUri
}
