module "landing_zone" {
  source = "<terraform-endpoint>/<terraform-organization>/landing-zone/azurerm"

  subscription_name  = var.subscription_name
  subscription_class = var.subscription_class
  location           = var.location
  vnet_offset        = var.vnet_offset
  tags               = var.tags
}
