function Invoke-OpenSpecRequest {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$Uri,

        [int]$MaxRetries = 4,

        [int]$InitialDelaySeconds = 1,

        [int]$TimeoutSec = 120
    )

    $headers = @{
        'User-Agent' = 'AwakeCoding.OpenSpecs/0.1 (+https://github.com/AwakeCoding)'
        'Accept-Language' = 'en-US,en;q=0.9'
    }

    $delay = [Math]::Max(1, $InitialDelaySeconds)
    $attempt = 0

    while ($true) {
        $attempt++
        try {
            return Invoke-WebRequest -Uri $Uri -Headers $headers -MaximumRedirection 8 -TimeoutSec $TimeoutSec -ErrorAction Stop
        }
        catch {
            $statusCode = $null
            if ($_.Exception.Response -and $_.Exception.Response.StatusCode) {
                $statusCode = [int]$_.Exception.Response.StatusCode
            }

            $transient = ($statusCode -in 429, 500, 502, 503, 504) -or (-not $statusCode)
            if ($attempt -ge $MaxRetries -or -not $transient) {
                throw
            }

            Start-Sleep -Seconds $delay
            $delay = [Math]::Min($delay * 2, 16)
        }
    }
}
