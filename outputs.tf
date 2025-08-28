output "resource_group_id" {
  description = "The ID of the resource group"
  value       = module.landing_zone.resource_group_id
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.landing_zone.resource_group_name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = module.landing_zone.resource_group_location
}

output "virtual_network_id" {
  description = "The ID of the virtual network"
  value       = module.landing_zone.virtual_network_id
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = module.landing_zone.virtual_network_name
}

output "virtual_network_address_space" {
  description = "The address space of the virtual network"
  value       = module.landing_zone.virtual_network_address_space
}

output "virtual_network_subnets" {
  description = "The subnets of the virtual network"
  value       = module.landing_zone.virtual_network_subnets
}

output "virtual_network_resource" {
  description = "The full virtual network resource object"
  value       = module.landing_zone.virtual_network_resource
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.landing_zone.storage_account_id
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.landing_zone.storage_account_name
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint for the storage account"
  value       = module.landing_zone.storage_account_primary_blob_endpoint
  sensitive   = true
}

output "storage_account_primary_connection_string" {
  description = "The primary connection string for the storage account"
  value       = module.landing_zone.storage_account_primary_connection_string
  sensitive   = true
}

output "storage_account_primary_access_key" {
  description = "The primary access key for the storage account"
  value       = module.landing_zone.storage_account_primary_access_key
  sensitive   = true
}

output "storage_account_resource" {
  description = "The full storage account resource object"
  value       = module.landing_zone.storage_account_resource
  sensitive   = true
}

output "import_ids" {
  description = "Terraform Import IDs for all resources created by this module"
  value       = module.landing_zone.import_ids
}
