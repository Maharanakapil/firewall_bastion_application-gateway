resource "azurerm_public_ip" "bastion-pip" {
  name = var.bastionc.pip_name
  location = var.bastionc.location
  resource_group_name = var.bastionc.resource_group_name
  allocation_method = var.bastionc.allocation_method
  sku = var.bastionc.sku
}

resource "azurerm_bastion_host" "bastion" {
  name = var.bastionc.name
  location = var.bastionc.location
  resource_group_name = var.bastionc.resource_group_name

ip_configuration {
  name = var.bastionc.ip_name
  subnet_id = data.azurerm_subnet.datasubnet.id
  public_ip_address_id = azurerm_public_ip.bastion-pip.id
}

}