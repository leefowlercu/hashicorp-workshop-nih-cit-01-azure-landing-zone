import {
  to = azurerm_resource_group.main
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra"
}

import {
  to = azurerm_storage_account.main
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Storage/storageAccounts/stnihcitworkshopnonprod"
}

import {
  to = azurerm_virtual_network.main
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra"
}

import {
  to = azurerm_subnet.subnets["web_zone_1"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/web-zone-1"
}

import {
  to = azurerm_subnet.subnets["web_zone_2"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/web-zone-2"
}

import {
  to = azurerm_subnet.subnets["web_zone_3"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/web-zone-3"
}

import {
  to = azurerm_subnet.subnets["app_zone_1"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/app-zone-1"
}

import {
  to = azurerm_subnet.subnets["app_zone_2"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/app-zone-2"
}

import {
  to = azurerm_subnet.subnets["app_zone_3"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/app-zone-3"
}

import {
  to = azurerm_subnet.subnets["data_zone_1"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/data-zone-1"
}

import {
  to = azurerm_subnet.subnets["data_zone_2"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/data-zone-2"
}

import {
  to = azurerm_subnet.subnets["data_zone_3"]
  id = "/subscriptions/863a90b0-8aca-4579-aac3-a76ffa0ebe78/resourceGroups/rg-nih-cit-workshop-nonprod-base-infra/providers/Microsoft.Network/virtualNetworks/vnet-nih-cit-workshop-nonprod-base-infra/subnets/data-zone-3"
}
