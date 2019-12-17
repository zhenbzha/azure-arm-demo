$templateUri = "https://zhenzhupload.blob.core.windows.net/fileupload/template.json?st=2019-12-19T14%3A57%3A22Z&se=2020-12-31T14%3A57%3A00Z&sp=rl&sv=2018-03-28&sr=b&sig=fBmzjvE4z5crIPs57jW5b6bJqFjuXdc6%2F1aFD5KchVo%3D"
$templateParameterUri = "https://zhenzhupload.blob.core.windows.net/fileupload/generated.parameters.json?st=2019-12-19T14%3A57%3A51Z&se=2020-12-20T14%3A57%3A00Z&sp=rl&sv=2018-03-28&sr=b&sig=sTolm78JJXqcUpH8a%2F2IldUq2O%2BEC5UF5dJ5AEq%2B8VU%3D"
$resourceGroupName = "zhenzh-arm-demo1"
$location = "West Europe"

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Force

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateUri $templateUri `
    -TemplateParameterUri $templateParameterUri `
    -Force