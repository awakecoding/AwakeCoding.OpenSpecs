function Invoke-OpenSpecConversionPipeline {
    [CmdletBinding()]
    param(
        [string[]]$ProtocolId,

        [string]$Query,

        [ValidateSet('PDF', 'DOCX', 'Both')]
        [string]$Format = 'DOCX',

        [string]$DownloadPath = (Join-Path -Path (Get-Location) -ChildPath 'downloads-convert'),

        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'converted-specs'),

        [switch]$Force,

        [switch]$Parallel,

        [int]$ThrottleLimit = 4
    )

    if (-not $ProtocolId -and -not $Query) {
        throw 'Provide ProtocolId or Query.'
    }

    $downloadResults = if ($ProtocolId) {
        Save-OpenSpecDocument -ProtocolId $ProtocolId -Format $Format -OutputPath $DownloadPath -Force:$Force
    }
    else {
        Save-OpenSpecDocument -Query $Query -Format $Format -OutputPath $DownloadPath -Force:$Force
    }

    $toConvert = $downloadResults | Where-Object { $_.Status -in 'Downloaded', 'Exists' }
    $toConvert | Convert-OpenSpecToMarkdown -OutputPath $OutputPath -Force:$Force -Parallel:$Parallel -ThrottleLimit $ThrottleLimit
}
