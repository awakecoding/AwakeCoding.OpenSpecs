function Test-OpenSpecDownload {
    [CmdletBinding()]
    param(
        [string[]]$ProtocolId = @('MS-RDPEWA', 'MS-RDPBCGR', 'MS-RDPEGFX', 'MS-RDPEDYC', 'MS-RDPECLIP'),

        [ValidateSet('PDF', 'DOCX', 'Both')]
        [string]$Format = 'Both',

        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'downloads-test'),

        [switch]$Force
    )

    $results = Save-OpenSpecDocument -ProtocolId $ProtocolId -Format $Format -OutputPath $OutputPath -Force:$Force

    $expectedFormats = if ($Format -eq 'Both') { @('PDF', 'DOCX') } else { @($Format) }
    $summary = New-Object System.Collections.Generic.List[object]

    foreach ($id in $ProtocolId) {
        foreach ($fmt in $expectedFormats) {
            $match = $results | Where-Object { $_.ProtocolId -eq $id -and $_.Format -eq $fmt } | Select-Object -First 1
            $pass = $false
            $reason = 'Missing result.'

            if ($match) {
                if ($match.Status -in 'Downloaded', 'Exists') {
                    if ((Test-Path -LiteralPath $match.Path) -and (Get-Item -LiteralPath $match.Path).Length -gt 0) {
                        $pass = $true
                        $reason = $match.Status
                    }
                    else {
                        $reason = 'File missing or empty.'
                    }
                }
                else {
                    $reason = $match.Error
                }
            }

            $summary.Add([pscustomobject]@{
                PSTypeName = 'AwakeCoding.OpenSpecs.DownloadTestResult'
                ProtocolId = $id
                Format = $fmt
                Pass = $pass
                Reason = $reason
                OutputPath = if ($match) { $match.Path } else { $null }
            })
        }
    }

    $summary
}
