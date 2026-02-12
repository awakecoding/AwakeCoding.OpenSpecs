BeforeAll {
    $modulePath = Join-Path -Path $PSScriptRoot -ChildPath '..\AwakeCoding.OpenSpecs\AwakeCoding.OpenSpecs.psd1'
    Import-Module $modulePath -Force
}

Describe 'AwakeCoding.OpenSpecs module load' {
    It 'exports expected cmdlets' {
        $expected = @(
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

        foreach ($name in $expected) {
            (Get-Command -Name $name -ErrorAction Stop).Name | Should -Be $name
        }
    }
}

Describe 'OpenSpecs live discovery' -Tag 'Live' {
    It 'finds RDP entries from catalog' {
        $matches = Find-OpenSpec -Query RDP
        $matches.Count | Should -BeGreaterThan 0
    }

    It 'resolves download links for MS-RDPEWA in both formats' {
        $links = Get-OpenSpecDownloadLink -ProtocolId MS-RDPEWA -Format Both
        ($links | Where-Object Format -eq 'PDF').Count | Should -BeGreaterThan 0
        ($links | Where-Object Format -eq 'DOCX').Count | Should -BeGreaterThan 0
    }
}

Describe 'Conversion report aggregation' {
    It 'returns severity counts and headline issue count from report payload' {
        $tempRoot = Join-Path -Path ([System.IO.Path]::GetTempPath()) -ChildPath ("openspecs-test-" + [guid]::NewGuid().ToString('N'))
        $specDir = Join-Path -Path $tempRoot -ChildPath 'MS-TEST'
        $artifactDir = Join-Path -Path $specDir -ChildPath 'artifacts'
        [void](New-Item -Path $artifactDir -ItemType Directory -Force)

        $reportPath = Join-Path -Path $artifactDir -ChildPath 'conversion-report.json'
        [pscustomobject]@{
            ProtocolId = 'MS-TEST'
            SourceFormat = 'DOCX'
            Strategy = 'pandoc-docx-gfm'
            IssueCount = 1
            InfoCount = 2
            WarningCount = 1
            ErrorCount = 0
            Issues = @(
                [pscustomobject]@{ Type = 'TableColspanExpanded'; Severity = 'Info' },
                [pscustomobject]@{ Type = 'LinkRewritten'; Severity = 'Info' },
                [pscustomobject]@{ Type = 'TableUnparsed'; Severity = 'Warning' }
            )
            GeneratedAtUtc = [DateTime]::UtcNow.ToString('o')
            MarkdownPath = (Join-Path -Path $specDir -ChildPath 'index.md')
        } | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $reportPath -Encoding UTF8

        $result = Get-OpenSpecConversionReport -OutputPath $tempRoot -ProtocolId MS-TEST | Select-Object -First 1

        $result.ProtocolId | Should -Be 'MS-TEST'
        $result.IssueCount | Should -Be 1
        $result.InfoCount | Should -Be 2
        $result.WarningCount | Should -Be 1
        $result.ErrorCount | Should -Be 0

        Remove-Item -LiteralPath $tempRoot -Recurse -Force
    }
}
