function Save-OpenSpecDocument {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(ValueFromPipeline)]
        [object]$InputObject,

        [string[]]$ProtocolId,

        [string]$Query,

        [ValidateSet('PDF', 'DOCX', 'Both')]
        [string]$Format = 'Both',

        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'downloads'),

        [switch]$IncludePrevious,

        [switch]$AllVersions,

        [switch]$Force
    )

    begin {
        if (-not (Test-Path -LiteralPath $OutputPath)) {
            [void](New-Item -Path $OutputPath -ItemType Directory -Force)
        }

        $incoming = New-Object System.Collections.Generic.List[object]
    }

    process {
        if ($null -ne $InputObject) {
            [void]$incoming.Add($InputObject)
        }
    }

    end {
        $links = New-Object System.Collections.Generic.List[object]

        if ($incoming.Count -gt 0) {
            foreach ($item in $incoming) {
                if ($item.PSTypeNames -contains 'AwakeCoding.OpenSpecs.DownloadLink' -or ($item.Url -and $item.Format)) {
                    [void]$links.Add($item)
                    continue
                }

                if ($item.ProtocolId) {
                    foreach ($link in (Get-OpenSpecDownloadLink -ProtocolId $item.ProtocolId -Format $Format -AllVersions:$AllVersions -IncludePrevious:$IncludePrevious)) {
                        [void]$links.Add($link)
                    }
                }
            }
        }
        else {
            $targetEntries = @()

            if ($ProtocolId) {
                foreach ($id in $ProtocolId) {
                    $targetEntries += Find-OpenSpec -ProtocolId $id
                }
            }
            elseif ($Query) {
                $targetEntries = Find-OpenSpec -Query $Query
            }
            else {
                throw 'You must provide InputObject, ProtocolId, or Query.'
            }

            foreach ($entry in $targetEntries) {
                foreach ($link in (Get-OpenSpecDownloadLink -ProtocolId $entry.ProtocolId -Format $Format -AllVersions:$AllVersions -IncludePrevious:$IncludePrevious)) {
                    [void]$links.Add($link)
                }
            }
        }

        foreach ($link in $links) {
            $fileName = $link.FileName
            if ([string]::IsNullOrWhiteSpace($fileName)) {
                $fileName = [System.IO.Path]::GetFileName([System.Uri]::new($link.Url).LocalPath)
            }

            $destination = Join-Path -Path $OutputPath -ChildPath $fileName

            if ((Test-Path -LiteralPath $destination) -and -not $Force) {
                [pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.DownloadResult'
                    ProtocolId = $link.ProtocolId
                    Format = $link.Format
                    Url = $link.Url
                    Path = $destination
                    Status = 'Exists'
                    Size = (Get-Item -LiteralPath $destination).Length
                }
                continue
            }

            if (-not $PSCmdlet.ShouldProcess($link.Url, "Download to $destination")) {
                continue
            }

            try {
                $attempt = 0
                $maxRetries = 4
                $delay = 1

                while ($true) {
                    $attempt++
                    try {
                        Invoke-WebRequest -Uri $link.Url -OutFile $destination -MaximumRedirection 8 -ErrorAction Stop
                        break
                    }
                    catch {
                        $statusCode = $null
                        if ($_.Exception.Response -and $_.Exception.Response.StatusCode) {
                            $statusCode = [int]$_.Exception.Response.StatusCode
                        }

                        $transient = ($statusCode -in 429, 500, 502, 503, 504) -or (-not $statusCode)
                        if ($attempt -ge $maxRetries -or -not $transient) {
                            throw
                        }

                        Start-Sleep -Seconds $delay
                        $delay = [Math]::Min($delay * 2, 16)
                    }
                }

                [pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.DownloadResult'
                    ProtocolId = $link.ProtocolId
                    Format = $link.Format
                    Url = $link.Url
                    Path = $destination
                    Status = 'Downloaded'
                    Size = (Get-Item -LiteralPath $destination).Length
                }
            }
            catch {
                [pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.DownloadResult'
                    ProtocolId = $link.ProtocolId
                    Format = $link.Format
                    Url = $link.Url
                    Path = $destination
                    Status = 'Failed'
                    Error = $_.Exception.Message
                    Size = $null
                }
            }
        }
    }
}
