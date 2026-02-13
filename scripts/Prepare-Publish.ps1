# Build a clean publish directory from converted-specs: only .md and media/ per protocol.
# Call Update-OpenSpecIndex -Path $PublishPath after this to generate README.md.
[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string]$ConvertedSpecsPath,

    [Parameter(Mandatory)]
    [string]$PublishPath
)

if (-not (Test-Path -LiteralPath $ConvertedSpecsPath)) {
    throw "Converted specs path not found: $ConvertedSpecsPath"
}

if (-not (Test-Path -LiteralPath $PublishPath)) {
    [void](New-Item -Path $PublishPath -ItemType Directory -Force)
}

$specDirs = Get-ChildItem -LiteralPath $ConvertedSpecsPath -Directory
foreach ($dir in $specDirs) {
    $name = $dir.Name
    $mdFile = Join-Path -Path $dir.FullName -ChildPath "$name.md"
    $mediaDir = Join-Path -Path $dir.FullName -ChildPath 'media'
    $destDir = Join-Path -Path $PublishPath -ChildPath $name

    if (-not (Test-Path -LiteralPath $mdFile)) {
        continue
    }

    [void](New-Item -Path $destDir -ItemType Directory -Force)
    Copy-Item -LiteralPath $mdFile -Destination $destDir -Force

    if (Test-Path -LiteralPath $mediaDir -PathType Container) {
        Copy-Item -LiteralPath $mediaDir -Destination $destDir -Recurse -Force
    }
}
