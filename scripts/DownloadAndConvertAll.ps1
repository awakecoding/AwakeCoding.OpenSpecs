# Download and convert all Windows protocol specs
$ErrorActionPreference = 'Stop'
$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

Import-Module ./AwakeCoding.OpenSpecs/AwakeCoding.OpenSpecs.psd1 -Force

$dl = Join-Path $repoRoot 'artifacts/downloads'
$out = Join-Path $repoRoot 'artifacts/converted-specs'
New-Item -Path $dl, $out -ItemType Directory -Force | Out-Null

Get-OpenSpecCatalog |
    Save-OpenSpecDocument -Format DOCX -OutputPath $dl -Force |
    Where-Object { $_.Status -in 'Downloaded', 'Exists' } |
    Convert-OpenSpecToMarkdown -OutputPath $out -Force -Parallel -ThrottleLimit 4
