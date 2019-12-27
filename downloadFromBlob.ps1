$resourceGroupName = "zhenzh-arm-demo-rg"
$storageAccountName = "zhenzharmsa"
$containerName = "attachments"
$blobName = "user_input.txt"
$destinationDir = "parameter_template"

$storageAccount = Get-AzStorageAccount -Name $storageAccountName -ResourceGroupName $resourceGroupName
$context = $storageAccount.context
#$sasToken = New-AzStorageContainerSASToken -Context $context -Container $containerName -Permission rwdl -ExpiryTime (get-date).AddHours(1)
Get-AzStorageBlobContent  -Container $containerName -Blob $blobName -Destination $destinationDir -Context $context -Force