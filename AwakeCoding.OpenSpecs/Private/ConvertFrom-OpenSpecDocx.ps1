function ConvertFrom-OpenSpecDocx {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$InputPath,

        [Parameter(Mandatory)]
        [string]$OutputPath,

        [Parameter(Mandatory)]
        [object]$Toolchain
    )

    if (-not $Toolchain.HasPandoc) {
        throw 'pandoc is required for DOCX conversion.'
    }

    $outputDirectory = Split-Path -Path $OutputPath -Parent
    if (-not (Test-Path -LiteralPath $outputDirectory)) {
        [void](New-Item -Path $outputDirectory -ItemType Directory -Force)
    }

    $mediaDirectory = Join-Path -Path $outputDirectory -ChildPath 'assets\media'
    if (-not (Test-Path -LiteralPath $mediaDirectory)) {
        [void](New-Item -Path $mediaDirectory -ItemType Directory -Force)
    }

    $arguments = @(
        '--from', 'docx',
        '--to', 'gfm',
        '--wrap=none',
        '--extract-media', $mediaDirectory,
        '--output', $OutputPath,
        $InputPath
    )

    & $Toolchain.PandocPath @arguments
    if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $OutputPath)) {
        throw "pandoc conversion failed for '$InputPath'."
    }

    return [pscustomobject]@{
        PSTypeName = 'AwakeCoding.OpenSpecs.ConversionStep'
        Strategy = 'pandoc-docx'
        OutputPath = $OutputPath
        Notes = @()
    }
}
