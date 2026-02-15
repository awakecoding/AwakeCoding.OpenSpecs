# AGENTS.md – AwakeCoding.OpenSpecs

Instructions for AI agents working in this repository. For user-facing usage and examples, see [README.md](README.md).

## Project summary

This repo is a PowerShell module that discovers and downloads Microsoft Open Specifications (Windows Protocols) from Learn and converts DOCX/PDF documents to strict GFM Markdown. There is no separate build: the module is `AwakeCoding.OpenSpecs.psd1` + `AwakeCoding.OpenSpecs.psm1` plus dot-sourced `Public/*.ps1` and `Private/*.ps1` on load. Target runtimes are PowerShell 5.1 and 7 (PSEditions Desktop and Core).

## File and directory structure

- **AwakeCoding.OpenSpecs/** – Module root. `AwakeCoding.OpenSpecs.psd1` is the manifest; `FunctionsToExport` is the source of truth for the public API. `AwakeCoding.OpenSpecs.psm1` dot-sources Private then Public.
- **AwakeCoding.OpenSpecs/Public/** – One exported function per file; filename must match the function name (e.g. `Find-OpenSpec.ps1`).
- **AwakeCoding.OpenSpecs/Private/** – Helper functions only; not exported. Use names like `*-OpenSpec*` or `ConvertFrom-OpenSpec*`.
- **tests/AwakeCoding.OpenSpecs.Tests.ps1** – Pester tests (module load, exports, live discovery, conversion report aggregation).
- **scripts/** – Standalone helper scripts (e.g. `Test-ParallelConversion.ps1`, `Build-Publish.ps1`); not part of the module.
- **.github/workflows/convert-and-publish.yml** – CI workflow: convert all specs, build publish tree, push to orphan branch.

**Adding a new public cmdlet:** (1) Add a new file `Public/<Verb>-OpenSpec<Noun>.ps1`. (2) Add the function name to `FunctionsToExport` in `AwakeCoding.OpenSpecs/AwakeCoding.OpenSpecs.psd1`. (3) Add the name to the “exports expected cmdlets” `$expected` array in `tests/AwakeCoding.OpenSpecs.Tests.ps1`.

## Running and paths

Load the module from repo root:

```powershell
Import-Module ./AwakeCoding.OpenSpecs/AwakeCoding.OpenSpecs.psd1 -Force
```

Use these working dirs to avoid polluting the repo: `./artifacts/downloads`, `./artifacts/converted-specs`, `./artifacts/reports`. Their contents are gitignored; directories may use `.gitkeep`. There is no install or build step; edit `.ps1`/`.psd1` and re-import the module to test.

## Code and naming conventions

- **Naming:** Public cmdlets use `Verb-OpenSpecNoun` (e.g. `Get-OpenSpecCatalog`, `Convert-OpenSpecToMarkdown`). Private helpers keep `OpenSpec` in the name where appropriate.
- **Parameters:** Use `[CmdletBinding()]`. Add pipeline support via `ValueFromPipeline` or `ValueFromPipelineByPropertyName` where it fits (e.g. `Save-OpenSpecDocument` accepts pipeline from catalog or download links).
- **File paths:** Prefer `-LiteralPath` (and `Test-Path -LiteralPath` internally) for user-supplied paths to avoid issues with brackets (e.g. `[MS-RDPEWA]`).
- **Output objects:** Assign `PSTypeName` to custom objects (e.g. `AwakeCoding.OpenSpecs.FidelityResult`, `AwakeCoding.OpenSpecs.IndexResult`) for consistency and formatting.
- **Errors:** Use `throw` for parameter/contract failures; use `Write-Warning` for non-fatal cases (e.g. catalog fetch failed in `Update-OpenSpecIndex`).

## Testing

Tests use Pester 5. From repo root:

```powershell
Invoke-Pester ./tests
```

Use PowerShell 7 when possible for consistency with CI. Some tests are tagged `Live` and hit the network (Find-OpenSpec, Get-OpenSpecDownloadLink). To skip them:

```powershell
Invoke-Pester ./tests -Tag '!Live'
```

When you add a new exported function, add its name to the `$expected` array in the “exports expected cmdlets” test in `tests/AwakeCoding.OpenSpecs.Tests.ps1`.

## Project-specific rules

- Do not remove or rename exported functions without updating `AwakeCoding.OpenSpecs.psd1` and the exports test.
- Conversion: DOCX is handled in-module via OpenXML; PDF uses external `docling` or `markitdown` when available (see `AwakeCoding.OpenSpecs/Private/Get-OpenSpecToolchain.ps1`). Output is textual (tables, ASCII), not image-based.
- For bulk or CI conversions, use `-Parallel -ThrottleLimit N` on PowerShell 7 with `Convert-OpenSpecToMarkdown` or `Invoke-OpenSpecConversionPipeline`.
