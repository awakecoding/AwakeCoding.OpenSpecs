function Get-OpenSpecDownloadLink {
    [CmdletBinding(DefaultParameterSetName = 'ByProtocolId')]
    param(
        [Parameter(ParameterSetName = 'ByProtocolId', Mandatory, ValueFromPipelineByPropertyName)]
        [string]$ProtocolId,

        [Parameter(ParameterSetName = 'BySpecObject', Mandatory, ValueFromPipeline)]
        [object]$InputObject,

        [ValidateSet('PDF', 'DOCX', 'Both')]
        [string]$Format = 'Both',

        [switch]$AllVersions,

        [switch]$IncludePrevious
    )

    process {
        $targetProtocolId = $ProtocolId
        $targetSpecPageUrl = $null

        if ($PSCmdlet.ParameterSetName -eq 'BySpecObject') {
            $targetProtocolId = $InputObject.ProtocolId
            $targetSpecPageUrl = $InputObject.SpecPageUrl
        }

        $versions = if ($targetSpecPageUrl) {
            Get-OpenSpecVersion -Uri $targetSpecPageUrl -AllVersions:$AllVersions -IncludePrevious:$IncludePrevious
        }
        else {
            Get-OpenSpecVersion -ProtocolId $targetProtocolId -AllVersions:$AllVersions -IncludePrevious:$IncludePrevious
        }

        foreach ($version in $versions) {
            if ($Format -in 'PDF', 'Both') {
                if ($version.PdfUrl) {
                    $pdfName = [System.Uri]::new($version.PdfUrl).Segments[-1]
                    [pscustomobject]@{
                        PSTypeName = 'AwakeCoding.OpenSpecs.DownloadLink'
                        ProtocolId = $version.ProtocolId
                        SpecPageUrl = $version.SpecPageUrl
                        Format = 'PDF'
                        Url = $version.PdfUrl
                        FileName = [System.Net.WebUtility]::UrlDecode($pdfName)
                        Version = $version.Version
                        PublishedDate = $version.PublishedDate
                    }
                }
            }

            if ($Format -in 'DOCX', 'Both') {
                if ($version.DocxUrl) {
                    $docxName = [System.Uri]::new($version.DocxUrl).Segments[-1]
                    [pscustomobject]@{
                        PSTypeName = 'AwakeCoding.OpenSpecs.DownloadLink'
                        ProtocolId = $version.ProtocolId
                        SpecPageUrl = $version.SpecPageUrl
                        Format = 'DOCX'
                        Url = $version.DocxUrl
                        FileName = [System.Net.WebUtility]::UrlDecode($docxName)
                        Version = $version.Version
                        PublishedDate = $version.PublishedDate
                    }
                }
            }
        }
    }
}
