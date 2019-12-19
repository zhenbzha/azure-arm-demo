Write-Host "hello world"
Write-Host "No problem reading $env:ARTIFACT_DIR"
$templateFile = "$env:ARTIFACT_DIR\Drop\azure-arm-demo\template.json"
$templateParameterFile = "$env:ARTIFACT_DIR\Drop\azure-arm-demo\generated.parameters.json"
$resourceGroupName = "zhenzh-arm-demo1"
$location = "West Europe"

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Force
