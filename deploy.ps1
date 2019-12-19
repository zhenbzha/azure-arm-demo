$templateFile = "$(System.ArtifactsDirectory)\Drop\azure-arm-demo\template.json"
$templateParameterFile = "$(System.ArtifactsDirectory)\Drop\azure-arm-demo\generated.parameters.json"
$resourceGroupName = "zhenzh-arm-demo1"
$location = "West Europe"

Write-Host "This works: $(templateFile)"

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Force
