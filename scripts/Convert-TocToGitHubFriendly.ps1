# Run ConvertTo-OpenSpecGitHubFriendlyToc on a spec file.
param([Parameter(Mandatory)][string]$Path)
$ErrorActionPreference = 'Stop'
$repoRoot = (Get-Item $PSScriptRoot).Parent.FullName
. (Join-Path $repoRoot 'AwakeCoding.OpenSpecs\Private\Invoke-OpenSpecMarkdownCleanup.ps1')
$md = Get-Content -LiteralPath $Path -Raw -Encoding UTF8
$r = ConvertTo-OpenSpecGitHubFriendlyToc -Markdown $md
Write-Host 'Rewritten:' $r.Rewritten
if ($r.Rewritten) {
    Set-Content -LiteralPath $Path -Value $r.Markdown -Encoding UTF8 -NoNewline
    Write-Host 'File updated.'
}
