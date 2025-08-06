data "azurerm_subnet" "subnet_id" {
  name = var.firewallc.subnet_name 
  resource_group_name =  var.firewallc.resource_group_name
  virtual_network_name =  var.firewallc.virtual_network_name
}