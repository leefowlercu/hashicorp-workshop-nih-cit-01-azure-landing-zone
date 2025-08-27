# hashicorp-workshop-tf-module-azure-landing-zone

This Terraform module provisions an Azure Landing Zone foundation. It's designed for workshop scenarios and provides a standardized approach to deploying Azure infrastructure.

## Requirements

- Terraform >= 1.12.2
- AzureRM Provider >= 4.41.0

## Authentication

This module uses the AzureRM provider without explicit configuration, expecting authentication through:
- Environment variables
- Azure CLI authentication
- HCP Terraform/Terraform Enterprise Dynamic Credentials

## Usage

### Basic Example

```hcl
module "landing_zone" {
  source = "<terraform-endpoint>/<terraform-organization>/landing-zone/azurerm"

  subscription_name  = "my-workshop"
  subscription_class = "nonprod"
  location           = "East US"
  vnet_offset        = 1
  tags = {
    Environment = "workshop"
    Owner       = "platform-team"
  }
}
```

### Production Example

```hcl
module "landing_zone" {
  source = "<terraform-endpoint>/<terraform-organization>/landing-zone/azurerm"

  subscription_name  = "production-workload"
  subscription_class = "prod"
  location           = "East US 2"
  vnet_offset        = 10
  tags = {
    Environment = "production"
    Owner       = "platform-team"
    CostCenter  = "engineering"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| subscription_name | Friendly name for the Azure Subscription. Should not include the Subscription Class (nonprod\|prod). Must be lowercase, hyphen-delimited alphanumeric string. | `string` | n/a | yes |
| subscription_class | The Classification (nonprod\|prod) of the Subscription. | `string` | n/a | yes |
| location | The primary Azure region to deploy the Landing Zone resources in. | `string` | n/a | yes |
| vnet_offset | The offset for CIDR block calculation | `number` | n/a | yes |
| tags | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description | Sensitive |
|------|-------------|-----------|
| resource_group_id | The ID of the resource group | no |
| resource_group_name | The name of the resource group | no |
| resource_group_location | The location of the resource group | no |
| virtual_network_id | The ID of the virtual network | no |
| virtual_network_name | The name of the virtual network | no |
| virtual_network_address_space | The address space of the virtual network | no |
| virtual_network_subnets | The subnets of the virtual network | no |
| virtual_network_resource | The full virtual network resource object | no |
| storage_account_id | The ID of the storage account | no |
| storage_account_name | The name of the storage account | no |
| storage_account_primary_blob_endpoint | The primary blob endpoint for the storage account | yes |
| storage_account_primary_connection_string | The primary connection string for the storage account | yes |
| storage_account_primary_access_key | The primary access key for the storage account | yes |
| storage_account_resource | The full storage account resource object | yes |


## Variable Constraints

### subscription_name
- Must be lowercase
- Must use hyphens as delimiters
- Must contain only alphanumeric characters and hyphens
- Example: `my-subscription-01`

### subscription_class
- Must be either `nonprod` or `prod`
- Used for environment classification and naming conventions

## Tags

The module supports comprehensive tagging through the `tags` variable. All resources created by the module will inherit these tags. Common tag examples:

```hcl
tags = {
  Environment = "production"
  Owner       = "platform-team"
  CostCenter  = "engineering"
  Project     = "landing-zone"
}
```
