resource "azurerm_public_ip" "fwpip" {
  name                = var.firewallc.pip_name
  location            = var.firewallc.location
  resource_group_name = var.firewallc.resource_group_name
  allocation_method   = var.firewallc.allocation_method
  sku                 = var.firewallc.sku
}

resource "azurerm_firewall" "firewall" {
  name                = var.firewallc.fw_name
  location            = var.firewallc.location
  resource_group_name = var.firewallc.resource_group_name
  sku_name            = var.firewallc.sku_name
  sku_tier            = var.firewallc.sku_tier

  ip_configuration {
    name                 = var.firewallc.ip_name
    subnet_id            = data.azurerm_subnet.subnet_id.id
    public_ip_address_id = azurerm_public_ip.fwpip.id
  }
}