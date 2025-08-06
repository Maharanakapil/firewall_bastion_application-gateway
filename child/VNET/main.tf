resource "azurerm_virtual_network" "vnet" {
  name = var.vnetc.name
  location = var.vnetc.location
  resource_group_name = var.vnetc.resource_group_name
  address_space = var.vnetc.address_prefixes

}