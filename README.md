# AwakeCoding.OpenSpecs

PowerShell module to discover and download Microsoft Open Specifications Windows Protocol documents by scraping Learn pages for document-level PDF and DOCX links, then convert those documents to strict GFM Markdown.

## Scope

- Source catalog: Windows Protocols technical documents page
- Avoids the giant ZIP package workflow
- Extracts per-spec PDF and DOCX links from each spec page
- Supports filtering by protocol ID and title (contains by default)

## Project layout

- `AwakeCoding.OpenSpecs/` – PowerShell module (`AwakeCoding.OpenSpecs.psd1`, `AwakeCoding.OpenSpecs.psm1`, `Public/*.ps1`, `Private/*.ps1`)
- `tests/AwakeCoding.OpenSpecs.Tests.ps1` – Pester tests (module load, live discovery, conversion report aggregation). Run with `Invoke-Pester ./tests`; use `-Tag '!Live'` to skip network tests.
- `scripts/` – Helper scripts (e.g. `Test-ParallelConversion.ps1`, `Build-Publish.ps1`, `Analyze-ConversionQuality.ps1`)
- `.github/workflows/convert-and-publish.yml` – Workflow to convert all specs and push a publish tree to an orphaned branch (e.g. for GitHub Pages).

## Recommended Working Directories

Use a single, repo-local working root so script runs do not create noisy untracked folders:

- `./artifacts/downloads` - downloaded PDF/DOCX files
- `./artifacts/converted-specs` - generated markdown + conversion artifacts
- `./artifacts/reports` - run summaries and post-processing reports

These folders are tracked with `.gitkeep`, while their contents are ignored via `.gitignore`.

## Cmdlets

- `Get-OpenSpecCatalog` - Gets Windows Protocol technical document entries from the Learn catalog page.
- `Find-OpenSpec` - Filters catalog entries by query or protocol ID.
- `Get-OpenSpecVersion` - Resolves latest (or all) version rows for a spec page.
- `Get-OpenSpecDownloadLink` - Gets download URLs for PDF and/or DOCX.
- `Save-OpenSpecDocument` - Downloads selected documents (accepts pipeline from `Get-OpenSpecCatalog` or `Get-OpenSpecDownloadLink`).
- `Test-OpenSpecDownload` - End-to-end validation for a set of protocol IDs.
- `Convert-OpenSpecToMarkdown` - Converts downloaded DOCX/PDF files to Markdown (supports `-Parallel -ThrottleLimit N` on PowerShell 7+). By default removes the back-of-document index section (page numbers are not meaningful in Markdown); use `-RemoveDocumentIndex:$false` to keep it.
- `Invoke-OpenSpecConversionPipeline` - Download + convert in one step; use `-Parallel -ThrottleLimit N` to run conversions in parallel.
- `Get-OpenSpecConversionReport` - Reads conversion report artifacts from a converted-specs output tree.
- `Test-OpenSpecMarkdownFidelity` - Runs lightweight fidelity checks on generated Markdown (headings, tables, anchors, TOC links).
- `Update-OpenSpecIndex` - Generates a `README.md` index of all converted specs in a directory (optionally using catalog titles and descriptions).
- `Compare-OpenSpecToLiveHtml` - Compares converted markdown structure to the live spec page on learn.microsoft.com and reports missing sections or ID mismatches.

## Usage

```powershell
Import-Module ./AwakeCoding.OpenSpecs/AwakeCoding.OpenSpecs.psd1 -Force

$WorkRoot = './artifacts'
$DownloadPath = Join-Path $WorkRoot 'downloads'
$ConvertedPath = Join-Path $WorkRoot 'converted-specs'
$ReportPath = Join-Path $WorkRoot 'reports'

# Find all specs that contain RDP in ID or title
Find-OpenSpec -Query RDP

# Get links for one spec
Get-OpenSpecDownloadLink -ProtocolId MS-RDPEWA -Format Both

# Download all RDP matches in both formats
Save-OpenSpecDocument -Query RDP -Format Both -OutputPath $DownloadPath

# Download a fixed test batch in both formats
Test-OpenSpecDownload -OutputPath $DownloadPath

# Download explicit protocols
Save-OpenSpecDocument -ProtocolId MS-RDPEWA,MS-RDPBCGR,MS-RDPEGFX,MS-RDPEDYC,MS-RDPECLIP -Format Both -OutputPath $DownloadPath

# Convert existing downloads to markdown
Convert-OpenSpecToMarkdown -Path "$DownloadPath/[MS-RDPEWA]-240423.docx" -OutputPath $ConvertedPath

# Download and convert in one command (DOCX first)
Invoke-OpenSpecConversionPipeline -ProtocolId MS-RDPEWA,MS-RDPBCGR -Format DOCX -DownloadPath $DownloadPath -OutputPath $ConvertedPath

# Review reports and run fidelity checks
Get-OpenSpecConversionReport -OutputPath $ConvertedPath
Test-OpenSpecMarkdownFidelity -OutputPath $ConvertedPath

# Generate an index README for the converted specs (e.g. for publish branch)
Update-OpenSpecIndex -Path $ConvertedPath -UseCatalogTitles
Update-OpenSpecIndex -Path $ConvertedPath -UseCatalogTitles -IncludeDescription
Update-OpenSpecIndex -Path $ConvertedPath -Title 'RDP Specifications' -UseCatalogTitles -IncludeDescription  # custom title
Update-OpenSpecIndex -Path $ConvertedPath -Title 'RDP Specifications' -UseCatalogTitles -IncludeDescription -OverviewProtocolIds MS-RDSOD  # overview first

# Include overview documents (e.g. Remote Desktop Services Overview MS-RDSOD; not in main catalog)
$overview = [pscustomobject]@{ ProtocolId='MS-RDSOD'; SpecPageUrl='https://learn.microsoft.com/en-us/openspecs/windows_protocols/ms-rdsod/072543f9-4bd4-4dc6-ab97-9a04bf9d2c6a' }
Get-OpenSpecDownloadLink -InputObject $overview -Format DOCX | Save-OpenSpecDocument -OutputPath $DownloadPath -Force
Convert-OpenSpecToMarkdown -Path "$DownloadPath/[MS-RDSOD]-230313.docx" -OutputPath $ConvertedPath -Force

# Compare converted markdown structure to live Learn pages
Compare-OpenSpecToLiveHtml -OutputPath $ConvertedPath -ProtocolId MS-RDPEWA,MS-RDPBCGR

# Optional: write your own run summaries under $ReportPath
```

## Notes

- Latest published version is selected by default; `-IncludePrevious` and `-AllVersions` can include older version rows.
- Output filenames follow the source download URL; the module uses retry/backoff for transient HTTP errors.
- DOCX conversion is OpenXML-based; PDF conversion uses `docling` or `markitdown` when available. Conversion output is textual (Markdown tables, ASCII fallback), not image-based.
- For CI or bulk runs, use `Invoke-OpenSpecConversionPipeline` or pipe `Get-OpenSpecCatalog` into `Save-OpenSpecDocument` then `Convert-OpenSpecToMarkdown` with `-Parallel -ThrottleLimit N` (PowerShell 7+).
