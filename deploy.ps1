$templateFile = "$(System.ArtifactsDirectory)\Drop\azure-arm-demo\template.json"
$templateParameterFile = "$(System.ArtifactsDirectory)\Drop\azure-arm-demo\generated.parameters.json"
$resourceGroupName = "zhenzh-arm-demo1"
$location = "West Europe"

Write-Output $templateFile

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFile `
    -TemplateParameterFile $templateParameterFile `
    -Force