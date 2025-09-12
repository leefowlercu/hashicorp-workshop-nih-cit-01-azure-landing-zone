import {
  to = module.landing_zone.azurerm_resource_group.main
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra"
}

import {
  to = module.landing_zone.azurerm_storage_account.main
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Storage/storageAccounts/stnihcitworkshopnonprod"
}

import {
  to = module.landing_zone.azurerm_virtual_network.main
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["web-zone-1"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/web-zone-1"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["web-zone-2"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/web-zone-2"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["web-zone-3"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/web-zone-3"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["app-zone-1"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/app-zone-1"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["app-zone-2"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/app-zone-2"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["app-zone-3"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/app-zone-3"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["data-zone-1"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/data-zone-1"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["data-zone-2"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/data-zone-2"
}

import {
  to = module.landing_zone.azurerm_subnet.subnets["data-zone-3"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/data-zone-3"
}
