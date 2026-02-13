# Reproduce corrupt DOCX failure locally: create a truncated file and run conversion.
# The CI failure was: "End of Central Directory record could not be found" when opening a DOCX (ZIP).
$ErrorActionPreference = 'Stop'
Import-Module (Join-Path $PSScriptRoot '..' 'AwakeCoding.OpenSpecs') -Force

$workDir = Join-Path $env:TEMP "openspecs-repro-$(Get-Date -Format 'yyyyMMddHHmmss')"
New-Item -ItemType Directory -Path $workDir -Force | Out-Null
$downloadsDir = Join-Path $workDir 'downloads'
$convertedDir = Join-Path $workDir 'converted'
New-Item -ItemType Directory -Path $downloadsDir -Force | Out-Null
New-Item -ItemType Directory -Path $convertedDir -Force | Out-Null

Write-Host "Work dir: $workDir"

# Option 1: Download one real DOCX then truncate it to simulate corruption
Write-Host "Downloading one spec (MS-NVGREE) to get a valid DOCX..."
$null = Get-OpenSpecCatalog | Where-Object { $_.ProtocolId -eq 'MS-NVGREE' } |
    Save-OpenSpecDocument -Format DOCX -OutputPath $downloadsDir -Force

$goodDocx = Get-ChildItem -LiteralPath $downloadsDir -Filter '*.docx' | Select-Object -First 1
if (-not $goodDocx) {
    Write-Error "No DOCX downloaded"
    exit 1
}

# Create a corrupt copy (truncate so ZIP EOCD is missing)
$corruptPath = Join-Path $downloadsDir 'CORRUPT-[MS-TEST].docx'
$bytes = [System.IO.File]::ReadAllBytes($goodDocx.FullName)
$truncatedSize = [Math]::Max(100, [int]($bytes.Length * 0.3))
[System.IO.File]::WriteAllBytes($corruptPath, $bytes[0..($truncatedSize-1)])
Write-Host "Created truncated (corrupt) file: $corruptPath ($truncatedSize bytes)"

# Run conversion: should hit "End of Central Directory record could not be found"
Write-Host "Converting (expect failure for corrupt file, then success for good file)..."
$results = @(
    [pscustomobject]@{ Path = $corruptPath; ProtocolId = 'MS-TEST' },
    [pscustomobject]@{ Path = $goodDocx.FullName; ProtocolId = 'MS-NVGREE' }
)
$conversionResults = $results | Convert-OpenSpecToMarkdown -OutputPath $convertedDir -Force

Write-Host "`nConversion results:"
$conversionResults | Format-Table ProtocolId, Status, Error -AutoSize

$failed = $conversionResults | Where-Object { $_.Status -eq 'Failed' }
$converted = $conversionResults | Where-Object { $_.Status -eq 'Converted' }
if ($failed -and $failed.ProtocolId -eq 'MS-TEST' -and $converted -and $converted.ProtocolId -eq 'MS-NVGREE') {
    Write-Host "`nRepro succeeded: corrupt file failed gracefully, good file converted."
} else {
    Write-Host "`nUnexpected: Failed=$($failed.ProtocolId) Converted=$($converted.ProtocolId)"
}

Remove-Item -LiteralPath $workDir -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "`nDone. Cleaned up $workDir"
