@{
    RootModule = 'AwakeCoding.OpenSpecs.psm1'
    ModuleVersion = '0.1.0'
    GUID = '0d2d7c64-bf31-4f62-9d70-396f6e31b596'
    Author = 'AwakeCoding'
    CompanyName = 'AwakeCoding'
    Copyright = '(c) AwakeCoding. All rights reserved.'
    Description = 'Downloads Microsoft Open Specifications Windows Protocol documents by scraping Learn pages for PDF and DOCX links.'
    PowerShellVersion = '5.1'
    CompatiblePSEditions = @('Desktop', 'Core')
    FunctionsToExport = @(
        'Get-OpenSpecCatalog',
        'Find-OpenSpec',
        'Get-OpenSpecVersion',
        'Get-OpenSpecDownloadLink',
        'Save-OpenSpecDocument',
        'Test-OpenSpecDownload',
        'Convert-OpenSpecToMarkdown',
        'Invoke-OpenSpecConversionPipeline',
        'Get-OpenSpecConversionReport',
        'Test-OpenSpecMarkdownFidelity'
    )
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()
    PrivateData = @{
        PSData = @{
            Tags = @('OpenSpecs', 'WindowsProtocol', 'Scraping', 'Downloader', 'Markdown', 'Conversion')
            ProjectUri = 'https://learn.microsoft.com/en-us/openspecs/windows_protocols/MS-WINPROTLP/e36c976a-6263-42a8-b119-7a3cc41ddd2a'
            LicenseUri = 'https://learn.microsoft.com/en-us/legal/termsofuse'
        }
    }
}
