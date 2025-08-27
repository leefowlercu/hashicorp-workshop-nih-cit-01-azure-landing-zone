module "landing_zone" {
  source  = "<tf-hostname>/<tf-organization-name>/<tf-registry-module-name>/azurerm"
  version = "1.0.0"

  subscription_name  = var.subscription_name
  subscription_class = var.subscription_class
  location           = var.location
  vnet_offset        = var.vnet_offset
  tags               = var.tags
}
