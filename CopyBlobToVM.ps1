# Install the packages required
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Install-Module Az.Storage -Force

# Storage account name and Container name
$StorageAccountName = "Your-Storage-Account-Name"
$ContainerName = "Your-Storage-Account-Container-Name"

# Give the connection string.
$ConnectionString = "DefaultEndpointsProtocol=https;AccountName=Your-Storage-Account-Name;AccountKey=Your-Storage-Account-Key"
$Ctx = New-AzStorageContext -ConnectionString $ConnectionString

# Download File
$FileName1 = "ABC.txt"
$FileName2 = "XYZ.txt"

# Destination Path
$localTargetDirectory = "C:\"

# Download Blob to the Destination Path
Get-AzStorageBlobContent -Blob $FileName1 -Container $ContainerName -Destination $localTargetDirectory -Context $ctx
Get-AzStorageBlobContent -Blob $FileName2 -Container $ContainerName -Destination $localTargetDirectory -Context $ctx
