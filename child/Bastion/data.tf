data "azurerm_subnet" "datasubnet" {
  name =  var.bastionc.bastion_subnet_name
  virtual_network_name =  var.bastionc.virtual_network_name
  resource_group_name =  var.bastionc.resource_group_name
}