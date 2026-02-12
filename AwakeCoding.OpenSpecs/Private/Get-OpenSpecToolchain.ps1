function Get-OpenSpecToolchain {
    [CmdletBinding()]
    param(
        [switch]$RequirePandoc,
        [switch]$RequirePdfConverter
    )

    $pandocCommand = Get-Command -Name 'pandoc' -ErrorAction SilentlyContinue
    $pythonCommand = Get-Command -Name 'python' -ErrorAction SilentlyContinue
    $doclingCommand = Get-Command -Name 'docling' -ErrorAction SilentlyContinue
    $markitdownCommand = Get-Command -Name 'markitdown' -ErrorAction SilentlyContinue

    $toolchain = [pscustomobject]@{
        PSTypeName = 'AwakeCoding.OpenSpecs.Toolchain'
        PandocPath = $pandocCommand.Source
        PythonPath = $pythonCommand.Source
        DoclingPath = $doclingCommand.Source
        MarkItDownPath = $markitdownCommand.Source
        HasPandoc = $null -ne $pandocCommand
        HasPython = $null -ne $pythonCommand
        HasDocling = $null -ne $doclingCommand
        HasMarkItDown = $null -ne $markitdownCommand
    }

    if ($RequirePandoc -and -not $toolchain.HasPandoc) {
        throw 'pandoc is required for DOCX to Markdown conversion. Install pandoc and retry.'
    }

    if ($RequirePdfConverter -and -not ($toolchain.HasDocling -or $toolchain.HasMarkItDown -or $toolchain.HasPandoc)) {
        throw 'No PDF converter detected. Install docling or markitdown (preferred), or pandoc as a fallback.'
    }

    return $toolchain
}
