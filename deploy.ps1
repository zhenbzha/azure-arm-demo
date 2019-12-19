$templateFile = "$env:ARTIFACT_DIR\$env:PRIMARY_ARTIFACT_SOURCE_ALIAS\Job\template.json"
$templateParameterFile = "$env:ARTIFACT_DIR\$env:PRIMARY_ARTIFACT_SOURCE_ALIAS\Job\generated.parameters.json"
$resourceGroupName = "zhenzh-arm-demo"
$location = "West Europe"

Write-Host "Content in directory: $env:ARTIFACT_DIR"
Get-ChildItem -Path $env:ARTIFACT_DIR -Depth 4

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFile `
    -TemplateParameterFile $templateParameterFile `
    -Force