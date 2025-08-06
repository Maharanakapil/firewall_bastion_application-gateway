resource "azurerm_resource_group" "mj-rg" {
  name = var.rgc.name
  location = var.rgc.location
}