$templateFile = "$(System.ArtifactsDirectory)/template.json"
$templateParameterFile = "$(System.ArtifactsDirectory)/generated.parameters.json"
$resourceGroupName = "zhenzh-arm-demo1"
$location = "West Europe"

$(System.ArtifactsDirectory)

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFile `
    -TemplateParameterFile $templateParameterFile `
    -Force