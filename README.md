# AwakeCoding.OpenSpecs

PowerShell module to discover and download Microsoft Open Specifications Windows Protocol documents by scraping Learn pages for document-level PDF and DOCX links, then convert those documents to strict GFM Markdown.

## Scope

- Source catalog: Windows Protocols technical documents page
- Avoids the giant ZIP package workflow
- Extracts per-spec PDF and DOCX links from each spec page
- Supports filtering by protocol ID and title (contains by default)

## Module Layout

- `AwakeCoding.OpenSpecs/AwakeCoding.OpenSpecs.psd1`
- `AwakeCoding.OpenSpecs/AwakeCoding.OpenSpecs.psm1`
- `AwakeCoding.OpenSpecs/Public/*.ps1`
- `AwakeCoding.OpenSpecs/Private/*.ps1`

## Recommended Working Directories

Use a single, repo-local working root so script runs do not create noisy untracked folders:

- `./artifacts/downloads` - downloaded PDF/DOCX files
- `./artifacts/converted-specs` - generated markdown + conversion artifacts
- `./artifacts/reports` - run summaries and post-processing reports

These folders are tracked with `.gitkeep`, while their contents are ignored via `.gitignore`.

## Cmdlets

- `Get-OpenSpecCatalog` - Gets Windows Protocol technical document entries.
- `Find-OpenSpec` - Filters entries by query or protocol ID.
- `Get-OpenSpecVersion` - Resolves latest (or all) version rows for a spec page.
- `Get-OpenSpecDownloadLink` - Gets download URLs for PDF and/or DOCX.
- `Save-OpenSpecDocument` - Downloads selected documents.
- `Test-OpenSpecDownload` - End-to-end validation for a set of protocol IDs.
- `Convert-OpenSpecToMarkdown` - Converts downloaded DOCX/PDF files to Markdown.
- `Invoke-OpenSpecConversionPipeline` - Download + convert in one pipeline. Use `-Parallel -ThrottleLimit N` (PowerShell 7+) to run conversions in parallel and reduce CI time.
- `Get-OpenSpecConversionReport` - Reads conversion report artifacts.
- `Test-OpenSpecMarkdownFidelity` - Runs lightweight fidelity checks on generated Markdown.

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

# Optional: write your own run summaries under $ReportPath
```

## Notes

- Latest published version is selected by default.
- `-IncludePrevious` and `-AllVersions` can include older version rows.
- Output filename preserves the source filename from the download URL.
- The module uses retry/backoff for transient HTTP errors.
- Conversion defaults to textual packet/structure output (Markdown tables with ASCII fallback), never image-based diagram rendering.
- DOCX conversion uses OpenXML-based conversion.
- Migration note: `Convert-OpenSpecToMarkdown` no longer supports `-DocxStrategy`; remove that argument from existing scripts.
- PDF conversion prefers `docling` or `markitdown`.
