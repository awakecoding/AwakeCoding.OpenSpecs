# Conversion Quality Analysis Report

**Generated:** 2026-02-13  
**Total specs in catalog:** 423  
**Successfully converted:** 421  
**Failed conversions:** 2

---

## Executive Summary

The Windows protocol specs were downloaded (DOCX) and converted to Markdown. **99.5% success rate** (421/423). Conversion quality is high: no specs have more than 1 reported issue, and the main "issue" (GuidAnchorResolved) is informational—GUID-based section anchors were correctly resolved to section-number anchors.

---

## Failed Conversions

| Protocol | Error |
|----------|-------|
| **MS-OAPX** | Corrupt DOCX: "End of Central Directory record could not be found." |
| **MS-WSUSAR** | Corrupt DOCX: "End of Central Directory record could not be found." |

These indicate corrupted or truncated DOCX files from the source. Re-downloading may help; otherwise the source documents need to be fixed by Microsoft.

---

## Conversion Issue Types

| Type | Count | Severity | Notes |
|------|-------|----------|-------|
| **GuidAnchorResolved** | 420 | Info | GUID section anchors were mapped to section number anchors—expected and correct behavior. |
| **PacketLayoutUnchanged** | 11 | Info | Packet layout tables were kept as-is (no ASCII fallback needed). |

No errors or warnings. All conversions produced valid Markdown with headings, tables, and resolved internal links.

---

## Live HTML Comparison

Compare-OpenSpecToLiveHtml fetched all 421 spec pages from learn.microsoft.com and compared structure (headings, anchors).

**Findings:**

1. **Live pages ≠ converted docs:** Learn.microsoft.com spec pages show a **download table** (Published Version, Previous Versions) and metadata—not the full document content. So:
   - Live pages have few headings (e.g. page chrome, TOC)
   - Converted Markdown has the full spec structure (hundreds of headings, Section_X.X anchors)
   - Structural differences are expected, not conversion bugs

2. **No fetch errors:** All 421 live pages were retrieved successfully.

3. **Suggest manual review:** 420 of 420 were flagged because the comparison heuristic treats "live has no headings but markdown has many" as a potential mismatch. This is by design of the Learn pages, not a conversion problem.

4. **Anchor mapping:** Converted Markdown uses `Section_1`, `Section_1.1`, etc. Live pages use different IDs (e.g. `ms-rdpeclip-remote-desktop-protocol-...`). The conversion pipeline correctly resolves GUID-based references to section-number anchors.

---

## Recommendations

1. **MS-OAPX, MS-WSUSAR:** Re-download these specs; if the error persists, report to Microsoft or skip in the catalog.
2. **GuidAnchorResolved:** No action—informational only.
3. **PacketLayoutUnchanged:** No action—tables are preserved.
4. **Live comparison:** Use Compare-OpenSpecToLiveHtml for spot-checks and for protocols where you want to validate metadata/titles against the Live page, not for full structural comparison (Learn pages don’t render the full document).

---

## Output Locations

- **Converted markdown:** `converted-specs/<ProtocolId>/<ProtocolId>.md`
- **Conversion reports:** `converted-specs/<ProtocolId>/artifacts/conversion-report.json`
- **Quality report (JSON):** `conversion-quality-report.json`
