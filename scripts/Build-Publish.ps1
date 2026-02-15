<#
.SYNOPSIS
    Builds the publish tree the same way convert-and-publish.yml does, for local validation.
.DESCRIPTION
    Downloads all Open Specs DOCX, converts to markdown, builds the publish directory,
    and generates the README index. Use this to validate the build locally before pushing.
#>
[CmdletBinding()]
param(
    [string]$WorkspaceRoot = (Get-Location),
    [string]$DownloadsPath = 'downloads-convert',
    [string]$ConvertedPath = 'converted-specs',
    [string]$PublishPath = 'publish',
    [int]$ThrottleLimit = 4,
    [switch]$SkipOpenXmlInstall
)

$ErrorActionPreference = 'Stop'
$root = Resolve-Path -LiteralPath $WorkspaceRoot

if (-not $SkipOpenXmlInstall) {
    Write-Host 'Ensuring OpenXML module is installed...'
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted -ErrorAction SilentlyContinue
    if (-not (Get-Module -ListAvailable -Name OpenXML)) {
        Install-Module -Name OpenXML -Force -Scope CurrentUser
    }
}

Push-Location $root
try {
    $dlPath = Join-Path $root $DownloadsPath
    $convPath = Join-Path $root $ConvertedPath
    $pubPath = Join-Path $root $PublishPath

    Write-Host 'Importing module and downloading catalog...'
    Import-Module (Join-Path $root 'AwakeCoding.OpenSpecs') -Force

    Write-Host 'Downloading DOCX files...'
    $downloadResults = Get-OpenSpecCatalog |
        Save-OpenSpecDocument -Format DOCX -OutputPath $dlPath -Force |
        Where-Object { $_.Status -in 'Downloaded', 'Exists' }

    $toConvert = @($downloadResults)
    Write-Host "Convert: $($toConvert.Count) specs"

    Write-Host 'Converting to markdown (parallel)...'
    $toConvert | Convert-OpenSpecToMarkdown -OutputPath $convPath -Force -Parallel -ThrottleLimit $ThrottleLimit | Out-Null

    Write-Host 'Building publish directory...'
    New-Item -Path $pubPath -ItemType Directory -Force | Out-Null

    Get-ChildItem -LiteralPath $convPath -Directory | ForEach-Object {
        $name = $_.Name
        $md = Join-Path $_.FullName "$name.md"
        if (-not (Test-Path -LiteralPath $md)) { $md = Join-Path $_.FullName 'README.md' }
        if (-not (Test-Path -LiteralPath $md)) { $md = Join-Path $_.FullName 'index.md' }
        if (-not (Test-Path -LiteralPath $md)) { return }

        $dest = Join-Path $pubPath $name
        New-Item -Path $dest -ItemType Directory -Force | Out-Null
        Copy-Item -LiteralPath $md -Destination $dest -Force

        $media = Join-Path $_.FullName 'media'
        if (Test-Path -LiteralPath $media -PathType Container) {
            Copy-Item -LiteralPath $media -Destination $dest -Recurse -Force
        }
    }

    Write-Host 'Updating index (README.md)...'
    Update-OpenSpecIndex -Path $pubPath

    $entryCount = (Get-Content (Join-Path $pubPath 'README.md') | Select-String '^\| \[.*\]').Count
    Write-Host "Done. Publish folder: $pubPath ($entryCount specs)"
}
finally {
    Pop-Location
}
