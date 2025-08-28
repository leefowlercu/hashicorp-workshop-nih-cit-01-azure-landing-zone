#!/bin/sh

# Read importids.json and replace placeholders in imports.tf

# Create backup of original imports.tf
cp imports.tf imports.tf.bak

# Create a temporary file for processing
TEMP_FILE=$(mktemp)
cp imports.tf "$TEMP_FILE"

# Extract resource IDs from importids.json
resource_group_id=$(jq -r '.resource_group' importids.json)
storage_account_id=$(jq -r '.storage_account' importids.json)
virtual_network_id=$(jq -r '.virtual_network' importids.json)

# Extract subnet IDs
web_zone_1_id=$(jq -r '.subnets["web-zone-1"]' importids.json)
web_zone_2_id=$(jq -r '.subnets["web-zone-2"]' importids.json)
web_zone_3_id=$(jq -r '.subnets["web-zone-3"]' importids.json)
app_zone_1_id=$(jq -r '.subnets["app-zone-1"]' importids.json)
app_zone_2_id=$(jq -r '.subnets["app-zone-2"]' importids.json)
app_zone_3_id=$(jq -r '.subnets["app-zone-3"]' importids.json)
data_zone_1_id=$(jq -r '.subnets["data-zone-1"]' importids.json)
data_zone_2_id=$(jq -r '.subnets["data-zone-2"]' importids.json)
data_zone_3_id=$(jq -r '.subnets["data-zone-3"]' importids.json)

# Replace specific placeholder IDs with actual resource IDs
sed -i.bak "s|<resource_group_import_id>|$resource_group_id|g" "$TEMP_FILE" || sed -i "s|<resource_group_import_id>|$resource_group_id|g" "$TEMP_FILE"
sed -i.bak "s|<storage_account_import_id>|$storage_account_id|g" "$TEMP_FILE" || sed -i "s|<storage_account_import_id>|$storage_account_id|g" "$TEMP_FILE"
sed -i.bak "s|<virtual_network_import_id>|$virtual_network_id|g" "$TEMP_FILE" || sed -i "s|<virtual_network_import_id>|$virtual_network_id|g" "$TEMP_FILE"

sed -i.bak "s|<subnet_web_zone_1_import_id>|$web_zone_1_id|g" "$TEMP_FILE" || sed -i "s|<subnet_web_zone_1_import_id>|$web_zone_1_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_web_zone_2_import_id>|$web_zone_2_id|g" "$TEMP_FILE" || sed -i "s|<subnet_web_zone_2_import_id>|$web_zone_2_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_web_zone_3_import_id>|$web_zone_3_id|g" "$TEMP_FILE" || sed -i "s|<subnet_web_zone_3_import_id>|$web_zone_3_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_app_zone_1_import_id>|$app_zone_1_id|g" "$TEMP_FILE" || sed -i "s|<subnet_app_zone_1_import_id>|$app_zone_1_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_app_zone_2_import_id>|$app_zone_2_id|g" "$TEMP_FILE" || sed -i "s|<subnet_app_zone_2_import_id>|$app_zone_2_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_app_zone_3_import_id>|$app_zone_3_id|g" "$TEMP_FILE" || sed -i "s|<subnet_app_zone_3_import_id>|$app_zone_3_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_data_zone_1_import_id>|$data_zone_1_id|g" "$TEMP_FILE" || sed -i "s|<subnet_data_zone_1_import_id>|$data_zone_1_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_data_zone_2_import_id>|$data_zone_2_id|g" "$TEMP_FILE" || sed -i "s|<subnet_data_zone_2_import_id>|$data_zone_2_id|g" "$TEMP_FILE"
sed -i.bak "s|<subnet_data_zone_3_import_id>|$data_zone_3_id|g" "$TEMP_FILE" || sed -i "s|<subnet_data_zone_3_import_id>|$data_zone_3_id|g" "$TEMP_FILE"

# Copy the updated content back to imports.tf
cp "$TEMP_FILE" imports.tf

# Clean up temporary file and sed backup files (keep imports.tf.bak)
rm -f "$TEMP_FILE" "$TEMP_FILE".bak

echo "Updated imports.tf with resource IDs from importids.json"