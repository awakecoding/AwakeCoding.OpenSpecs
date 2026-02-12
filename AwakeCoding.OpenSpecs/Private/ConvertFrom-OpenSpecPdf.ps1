function ConvertFrom-OpenSpecPdf {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [string]$InputPath,

        [Parameter(Mandatory)]
        [string]$OutputPath,

        [Parameter(Mandatory)]
        [object]$Toolchain
    )

    $outputDirectory = Split-Path -Path $OutputPath -Parent
    if (-not (Test-Path -LiteralPath $outputDirectory)) {
        [void](New-Item -Path $outputDirectory -ItemType Directory -Force)
    }

    $notes = New-Object System.Collections.Generic.List[string]

    if ($Toolchain.HasDocling) {
        $doclingArguments = @('--to', 'md', '--output', $outputDirectory, $InputPath)
        & $Toolchain.DoclingPath @doclingArguments
        if ($LASTEXITCODE -eq 0) {
            $candidate = Join-Path -Path $outputDirectory -ChildPath ("{0}.md" -f [System.IO.Path]::GetFileNameWithoutExtension($InputPath))
            if (Test-Path -LiteralPath $candidate) {
                Move-Item -LiteralPath $candidate -Destination $OutputPath -Force
                return [pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.ConversionStep'
                    Strategy = 'docling-pdf'
                    OutputPath = $OutputPath
                    Notes = @('Converted with docling CLI.')
                }
            }
        }

        $notes.Add('docling was detected but did not produce expected markdown output.')
    }

    if ($Toolchain.HasMarkItDown) {
        $markitdownArguments = @($InputPath, '--output', $OutputPath)
        & $Toolchain.MarkItDownPath @markitdownArguments
        if ($LASTEXITCODE -eq 0 -and (Test-Path -LiteralPath $OutputPath)) {
            return [pscustomobject]@{
                PSTypeName = 'AwakeCoding.OpenSpecs.ConversionStep'
                Strategy = 'markitdown-pdf'
                OutputPath = $OutputPath
                Notes = @('Converted with markitdown CLI.')
            }
        }

        $notes.Add('markitdown was detected but conversion failed.')
    }

    if ($Toolchain.HasPandoc) {
        $pandocArguments = @('--from', 'pdf', '--to', 'gfm', '--wrap=none', '--output', $OutputPath, $InputPath)
        & $Toolchain.PandocPath @pandocArguments
        if ($LASTEXITCODE -eq 0 -and (Test-Path -LiteralPath $OutputPath)) {
            return [pscustomobject]@{
                PSTypeName = 'AwakeCoding.OpenSpecs.ConversionStep'
                Strategy = 'pandoc-pdf-fallback'
                OutputPath = $OutputPath
                Notes = @('Converted with pandoc fallback from PDF.')
            }
        }

        $notes.Add('pandoc fallback from PDF failed.')
    }

    throw ("Unable to convert PDF '{0}' to Markdown. {1}" -f $InputPath, ($notes -join ' '))
}
