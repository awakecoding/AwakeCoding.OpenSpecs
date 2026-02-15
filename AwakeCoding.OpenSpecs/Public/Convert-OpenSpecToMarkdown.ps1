function Convert-OpenSpecToMarkdown {
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline)]
        [object]$InputObject,

        [string[]]$Path,

        [string]$OutputPath = (Join-Path -Path (Get-Location) -ChildPath 'converted-specs'),

        [ValidateSet('Auto', 'DOCX', 'PDF')]
        [string]$SourceFormat = 'Auto',

        [switch]$Force,

        [switch]$Parallel,

        [int]$ThrottleLimit = 4,

        [switch]$RemoveDocumentIndex = $true
    )

    begin {
        if (-not (Test-Path -LiteralPath $OutputPath)) {
            [void](New-Item -Path $OutputPath -ItemType Directory -Force)
        }

        $items = New-Object System.Collections.Generic.List[object]
    }

    process {
        if ($null -ne $InputObject) {
            [void]$items.Add($InputObject)
        }
    }

    end {
        if ($Path) {
            foreach ($itemPath in $Path) {
                [void]$items.Add([pscustomobject]@{ Path = $itemPath })
            }
        }

        if ($items.Count -eq 0) {
            throw 'Provide InputObject or Path for conversion.'
        }

        $useParallel = $Parallel -and $PSVersionTable.PSVersion.Major -ge 7 -and $items.Count -gt 1
        if ($useParallel) {
            $moduleBase = (Get-Module AwakeCoding.OpenSpecs).ModuleBase
            $outputPathArg = $OutputPath
            $forceArg = $Force
            $sourceFormatArg = $SourceFormat
            $removeIndexArg = $RemoveDocumentIndex
            $items | ForEach-Object -Parallel {
                Import-Module (Join-Path $using:moduleBase 'AwakeCoding.OpenSpecs.psd1') -Force | Out-Null
                Convert-OpenSpecToMarkdown -Path $_.Path -OutputPath $using:outputPathArg -Force:$using:forceArg -SourceFormat $using:sourceFormatArg -RemoveDocumentIndex:$using:removeIndexArg
            } -ThrottleLimit $ThrottleLimit
            return
        }

        $toolchain = Get-OpenSpecToolchain

        foreach ($item in $items) {
            $sourcePath = if ($item.Path) { $item.Path } elseif ($item.PSObject.Properties['Path']) { $item.Path } else { $null }
            if (-not $sourcePath) {
                continue
            }

            if (-not (Test-Path -LiteralPath $sourcePath)) {
                Write-Error "Source file not found: $sourcePath"
                continue
            }

            $extension = [System.IO.Path]::GetExtension($sourcePath).ToLowerInvariant()
            $resolvedFormat = if ($SourceFormat -eq 'Auto') {
                switch ($extension) {
                    '.docx' { 'DOCX' }
                    '.pdf' { 'PDF' }
                    default { 'Unknown' }
                }
            }
            else {
                $SourceFormat
            }

            if ($resolvedFormat -eq 'Unknown') {
                Write-Error "Unable to infer source format for '$sourcePath'."
                continue
            }

            if ($item.PSObject.Properties['ProtocolId']) {
                $protocolId = $item.ProtocolId
            }
            else {
                $fileStem = [System.IO.Path]::GetFileNameWithoutExtension($sourcePath)
                if ($fileStem -match '\[(?<id>(?:MS|MC)-[A-Z0-9-]+)\]') {
                    $protocolId = $Matches['id']
                }
                else {
                    $protocolId = $fileStem.Trim('[', ']')
                }
            }
            $safeProtocol = ($protocolId -replace '[^A-Za-z0-9_.-]', '_')
            $specDirectory = Join-Path -Path $OutputPath -ChildPath $safeProtocol
            $artifactDirectory = Join-Path -Path $specDirectory -ChildPath 'artifacts'

            if (-not (Test-Path -LiteralPath $artifactDirectory)) {
                [void](New-Item -Path $artifactDirectory -ItemType Directory -Force)
            }

            $markdownPath = Join-Path -Path $specDirectory -ChildPath "$safeProtocol.md"
            if ((Test-Path -LiteralPath $markdownPath) -and -not $Force) {
                [pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.ConversionResult'
                    ProtocolId = $protocolId
                    SourcePath = $sourcePath
                    SourceFormat = $resolvedFormat
                    MarkdownPath = $markdownPath
                    Status = 'Exists'
                    Strategy = 'none'
                    IssueCount = 0
                    InfoCount = 0
                    WarningCount = 0
                    ErrorCount = 0
                    ReportPath = (Join-Path -Path $artifactDirectory -ChildPath 'conversion-report.json')
                }
                continue
            }

            $conversionStep = $null
            try {
            if ($resolvedFormat -eq 'DOCX') {
                $toolchain = Get-OpenSpecToolchain -RequireDocxConverter
                $rawMarkdownPath = Join-Path -Path $artifactDirectory -ChildPath 'raw-docx.md'
                $mediaDirectory = Join-Path -Path $specDirectory -ChildPath 'media'
                $conversionStep = ConvertFrom-OpenSpecDocx -InputPath $sourcePath -OutputPath $rawMarkdownPath -Toolchain $toolchain -MediaOutputDirectory $mediaDirectory
            }
            elseif ($resolvedFormat -eq 'PDF') {
                $toolchain = Get-OpenSpecToolchain -RequirePdfConverter
                $rawMarkdownPath = Join-Path -Path $artifactDirectory -ChildPath 'raw-pdf.md'
                $conversionStep = ConvertFrom-OpenSpecPdf -InputPath $sourcePath -OutputPath $rawMarkdownPath -Toolchain $toolchain
            }

            $rawMarkdown = Get-Content -LiteralPath $conversionStep.OutputPath -Raw
            $normalized = ConvertTo-OpenSpecTextLayout -Markdown $rawMarkdown
            $cleaned = Invoke-OpenSpecMarkdownCleanup -Markdown $normalized.Markdown -CurrentProtocolId $protocolId -RemoveDocumentIndex:$RemoveDocumentIndex

            $allIssues = @()
            if ($normalized.Issues) {
                $allIssues += @($normalized.Issues)
            }
            if ($cleaned.Issues) {
                $allIssues += @($cleaned.Issues)
            }

            if ([regex]::IsMatch($cleaned.Markdown, '(?is)</?(?:tr|td|th|tbody|thead|colgroup|col)\b|(?im)^\s*</?table\b[^>]*>\s*$')) {
                $allIssues += [pscustomobject]@{
                    Type = 'HtmlTableResidual'
                    Severity = 'Error'
                    Reason = 'Residual HTML table markup remained after cleanup.'
                }
            }

            if ([string]::IsNullOrWhiteSpace($cleaned.Markdown)) {
                $allIssues += [pscustomobject]@{
                    Type = 'EmptyMarkdownOutput'
                    Severity = 'Error'
                    Reason = 'Converted markdown is empty after cleanup.'
                }
            }

            $infoCount = 0
            $warningCount = 0
            $errorCount = 0
            foreach ($issue in @($allIssues)) {
                $severity = 'Warning'
                if ($issue.PSObject.Properties['Severity'] -and -not [string]::IsNullOrWhiteSpace($issue.Severity)) {
                    $severity = [string]$issue.Severity
                }

                switch -Regex ($severity) {
                    '^(?i)info$' { $infoCount++ ; break }
                    '^(?i)error$' { $errorCount++ ; break }
                    default { $warningCount++ ; break }
                }
            }

            $headlineIssueCount = $warningCount + $errorCount

            $cleaned.Markdown | Set-Content -LiteralPath $markdownPath -Encoding UTF8

            $layoutModelPath = Join-Path -Path $artifactDirectory -ChildPath 'layout-model.json'
            $allIssues | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $layoutModelPath -Encoding UTF8

            $sourceManifestPath = Join-Path -Path $artifactDirectory -ChildPath 'source-manifest.json'
            [pscustomobject]@{
                SourcePath = $sourcePath
                SourceFormat = $resolvedFormat
                ConvertedAtUtc = [DateTime]::UtcNow.ToString('o')
                Strategy = $conversionStep.Strategy
                Toolchain = [pscustomobject]@{
                    HasOpenXml = if ($toolchain.PSObject.Properties['HasOpenXml']) { $toolchain.HasOpenXml } else { $false }
                    HasDocling = $toolchain.HasDocling
                    HasMarkItDown = $toolchain.HasMarkItDown
                }
            } | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $sourceManifestPath -Encoding UTF8

            $reportPath = Join-Path -Path $artifactDirectory -ChildPath 'conversion-report.json'
            [pscustomobject]@{
                ProtocolId = $protocolId
                SourcePath = $sourcePath
                SourceFormat = $resolvedFormat
                MarkdownPath = $markdownPath
                Strategy = $conversionStep.Strategy
                IssueCount = $headlineIssueCount
                InfoCount = $infoCount
                WarningCount = $warningCount
                ErrorCount = $errorCount
                Issues = @($allIssues)
                Notes = @($conversionStep.Notes)
                GeneratedAtUtc = [DateTime]::UtcNow.ToString('o')
            } | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $reportPath -Encoding UTF8

            [pscustomobject]@{
                PSTypeName = 'AwakeCoding.OpenSpecs.ConversionResult'
                ProtocolId = $protocolId
                SourcePath = $sourcePath
                SourceFormat = $resolvedFormat
                MarkdownPath = $markdownPath
                Status = 'Converted'
                Strategy = $conversionStep.Strategy
                IssueCount = $headlineIssueCount
                InfoCount = $infoCount
                WarningCount = $warningCount
                ErrorCount = $errorCount
                ReportPath = $reportPath
            }
            }
            catch {
                $errMsg = $_.Exception.Message
                Write-Warning "Conversion failed for $protocolId : $errMsg"
                [pscustomobject]@{
                    PSTypeName = 'AwakeCoding.OpenSpecs.ConversionResult'
                    ProtocolId = $protocolId
                    SourcePath = $sourcePath
                    SourceFormat = $resolvedFormat
                    MarkdownPath = $null
                    Status = 'Failed'
                    Strategy = $null
                    IssueCount = 0
                    InfoCount = 0
                    WarningCount = 0
                    ErrorCount = 1
                    ReportPath = $null
                    Error = $errMsg
                }
            }
        }
    }
}
