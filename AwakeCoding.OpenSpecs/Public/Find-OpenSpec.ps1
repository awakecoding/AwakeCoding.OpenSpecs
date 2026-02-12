function Find-OpenSpec {
    [CmdletBinding(DefaultParameterSetName = 'ByQuery')]
    param(
        [Parameter(ValueFromPipeline)]
        [object]$InputObject,

        [Parameter(ParameterSetName = 'ByQuery', Mandatory)]
        [string]$Query,

        [Parameter(ParameterSetName = 'ByProtocolId', Mandatory)]
        [string[]]$ProtocolId,

        [switch]$Exact
    )

    begin {
        $buffer = New-Object System.Collections.Generic.List[object]
    }

    process {
        if ($null -ne $InputObject) {
            [void]$buffer.Add($InputObject)
        }
    }

    end {
        $items = if ($buffer.Count -gt 0) { $buffer } else { @(Get-OpenSpecCatalog) }

        if ($PSCmdlet.ParameterSetName -eq 'ByProtocolId') {
            foreach ($id in $ProtocolId) {
                if ($Exact) {
                    $items | Where-Object { $_.ProtocolId -eq $id }
                }
                else {
                    $items | Where-Object { $_.ProtocolId -like "*$id*" }
                }
            }
            return
        }

        if ($Exact) {
            $items | Where-Object { $_.ProtocolId -eq $Query -or $_.Title -eq $Query }
            return
        }

        $items | Where-Object {
            $_.ProtocolId -like "*$Query*" -or $_.Title -like "*$Query*"
        }
    }
}
