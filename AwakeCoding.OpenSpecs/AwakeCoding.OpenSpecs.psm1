$privateFunctions = Get-ChildItem -Path (Join-Path -Path $PSScriptRoot -ChildPath 'Private') -Filter '*.ps1' -ErrorAction SilentlyContinue
foreach ($file in $privateFunctions) {
    . $file.FullName
}

$publicFunctions = Get-ChildItem -Path (Join-Path -Path $PSScriptRoot -ChildPath 'Public') -Filter '*.ps1' -ErrorAction SilentlyContinue
foreach ($file in $publicFunctions) {
    . $file.FullName
}

Export-ModuleMember -Function $publicFunctions.BaseName
