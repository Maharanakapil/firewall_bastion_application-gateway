bastionm = {
  name                 = "bastion-mj-prod"
  location             = "central india"
  resource_group_name  = "rg-mj-prod-ci-01"
  virtual_network_name = "vnet-mj-prod-ci-01"
  bastion_subnet_name  = "AzureBastionSubnet"
  allocation_method    = "Static"
  sku                  = "Standard"
  pip_name             = "bastionpip01"
  ip_name              = "bastion-ip"
}

firewallm = {
    pip_name                = "fw-mj-pip"
  location            = "central india"
  resource_group_name = "rg-mj-prod-ci-01"
  allocation_method   = "Static"
  sku                 = "Standard"
  fw_name                = "firewall-mj"
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"
  ip_name = "configuration"
  virtual_network_name = "vnet-mj-prod-ci-01"
  subnet_name = "AzureFirewallSubnet"
}