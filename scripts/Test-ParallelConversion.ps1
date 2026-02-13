# Quick test: parallel conversion with 2 specs
$ErrorActionPreference = 'Stop'
Import-Module (Join-Path $PSScriptRoot '..' 'AwakeCoding.OpenSpecs') -Force

$d = Join-Path $env:TEMP 'openspecs-parallel-test'
New-Item -ItemType Directory -Path $d -Force | Out-Null
$outDir = Join-Path $d 'out'

Get-OpenSpecCatalog | Select-Object -First 2 | Save-OpenSpecDocument -Format DOCX -OutputPath $d -Force |
    Where-Object { $_.Status -in 'Downloaded', 'Exists' } |
    Convert-OpenSpecToMarkdown -OutputPath $outDir -Force -Parallel -ThrottleLimit 2 |
    Format-Table ProtocolId, Status -AutoSize

Remove-Item $d -Recurse -Force -ErrorAction SilentlyContinue
Write-Host 'Done.'
