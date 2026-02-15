<#
.SYNOPSIS
    Injects missing Section_N.N anchors into an already-converted spec using TOC titles.
.DESCRIPTION
    Runs Add-OpenSpecMissingSectionAnchorsFromToc on the given markdown file and overwrites it.
    Use this to fix "Section_X.Y.Z (numeric)" broken links without reconverting from DOCX.
.EXAMPLE
    .\Repair-MissingSectionAnchors.ps1 -Path artifacts\converted-specs\MS-RDPBCGR\MS-RDPBCGR.md
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$Path
)

$ErrorActionPreference = 'Stop'
$fullPath = [System.IO.Path]::GetFullPath($Path)
if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
    Write-Error "File not found: $fullPath"
}

$repoRoot = (Get-Item $PSScriptRoot).Parent.FullName
$privateScript = Join-Path $repoRoot 'AwakeCoding.OpenSpecs\Private\Invoke-OpenSpecMarkdownCleanup.ps1'
if (-not (Test-Path -LiteralPath $privateScript -PathType Leaf)) {
    Write-Error "Cleanup script not found: $privateScript"
}

. $privateScript
$markdown = Get-Content -LiteralPath $fullPath -Raw -Encoding UTF8
$result = Add-OpenSpecMissingSectionAnchorsFromToc -Markdown $markdown
if ($result.InjectedCount -gt 0) {
    $result.Markdown | Set-Content -LiteralPath $fullPath -Encoding UTF8 -NoNewline
    Write-Host "Injected $($result.InjectedCount) missing section anchor(s). File updated: $fullPath"
} else {
    Write-Host "No missing section anchors to inject."
}
