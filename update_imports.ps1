# PowerShell script to update imports.tf with resource IDs from importids.json

# Create backup of original imports.tf
Copy-Item -Path "imports.tf" -Destination "imports.tf.bak" -Force

# Read the importids.json file
$jsonContent = Get-Content -Path "importids.json" -Raw | ConvertFrom-Json

# Extract resource IDs
$resourceGroupId = $jsonContent.resource_group
$storageAccountId = $jsonContent.storage_account
$virtualNetworkId = $jsonContent.virtual_network

# Extract subnet IDs
$webZone1Id = $jsonContent.subnets."web-zone-1"
$webZone2Id = $jsonContent.subnets."web-zone-2"
$webZone3Id = $jsonContent.subnets."web-zone-3"
$appZone1Id = $jsonContent.subnets."app-zone-1"
$appZone2Id = $jsonContent.subnets."app-zone-2"
$appZone3Id = $jsonContent.subnets."app-zone-3"
$dataZone1Id = $jsonContent.subnets."data-zone-1"
$dataZone2Id = $jsonContent.subnets."data-zone-2"
$dataZone3Id = $jsonContent.subnets."data-zone-3"

# Read the imports.tf file content
$importsContent = Get-Content -Path "imports.tf" -Raw

# Replace placeholder IDs with actual resource IDs
$importsContent = $importsContent -replace '<resource_group_import_id>', $resourceGroupId
$importsContent = $importsContent -replace '<storage_account_import_id>', $storageAccountId
$importsContent = $importsContent -replace '<virtual_network_import_id>', $virtualNetworkId

$importsContent = $importsContent -replace '<subnet_web_zone_1_import_id>', $webZone1Id
$importsContent = $importsContent -replace '<subnet_web_zone_2_import_id>', $webZone2Id
$importsContent = $importsContent -replace '<subnet_web_zone_3_import_id>', $webZone3Id
$importsContent = $importsContent -replace '<subnet_app_zone_1_import_id>', $appZone1Id
$importsContent = $importsContent -replace '<subnet_app_zone_2_import_id>', $appZone2Id
$importsContent = $importsContent -replace '<subnet_app_zone_3_import_id>', $appZone3Id
$importsContent = $importsContent -replace '<subnet_data_zone_1_import_id>', $dataZone1Id
$importsContent = $importsContent -replace '<subnet_data_zone_2_import_id>', $dataZone2Id
$importsContent = $importsContent -replace '<subnet_data_zone_3_import_id>', $dataZone3Id

# Write the updated content back to imports.tf
Set-Content -Path "imports.tf" -Value $importsContent -NoNewline

Write-Host "Updated imports.tf with resource IDs from importids.json"