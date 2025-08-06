rgm = {
  name     = "rg-mj-test-ci-01"
  location = "central india"
}

vnetm = {
  name                = "vnet-mj-test-ci-01"
  location            = "central india"
  resource_group_name = "rg-mj-test-ci-01"
  address_space       = ["192.168.0.0/23"]
}

subnetm = {
  subnet1 = {
    name                 = "subnet-mj-test-ci-01"
    resource_group_name  = "rg-mj-test-ci-01"
    virtual_network_name = "vnet-mj-test-ci-01"
    address_prefixes     = ["192.168.0.0/25"]
  }
  subnet2 = {
    name                 = "subnet-mj-test-ci-02"
    resource_group_name  = "rg-mj-test-ci-01"
    virtual_network_name = "vnet-mj-test-ci-01"
    address_prefixes     = ["192.168.0.128/25"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-mj-test-ci-01"
    virtual_network_name = "vnet-mj-test-ci-01"
    address_prefixes     = ["172.169.3.224/29"]
  }
  subnet4 = {
    name                 = "AzureFirewallSubnet"
    resource_group_name  = "rg-mj-test-ci-01"
    virtual_network_name = "vnet-mj-test-ci-01"
    address_prefixes     = ["172.169.3.232/29"]
  }
  subnet5 = {
    name                 = "AzureAppGWSubnet"
    resource_group_name  = "rg-mj-test-ci-01"
    virtual_network_name = "vnet-mj-test-ci-01"
    address_prefixes     = ["172.169.3.240/29"]
  }
}

nicm = {
  nic1 = {
    name                          = "nic01"
    location                      = "central india"
    resource_group_name           = "rg-mj-test-ci-01"
    virtual_network_name          = "vnet-mj-test-ci-01"
    subnet_name                   = "subnet-mj-test-ci-01"
    ip_name                       = "ipconfig1"
    private_ip_address_allocation = "Dynamic"
  }
  nic2 = {
    name                          = "nic02"
    location                      = "central india"
    resource_group_name           = "rg-mj-test-ci-01"
    virtual_network_name          = "vnet-mj-test-ci-01"
    subnet_name                   = "subnet-mj-test-ci-02"
    ip_name                       = "ipconfig2"
    private_ip_address_allocation = "Dynamic"
  }
  nic3 = {
    name                          = "nic03"
    location                      = "central india"
    resource_group_name           = "rg-mj-test-ci-01"
    virtual_network_name          = "vnet-mj-test-ci-01"
    subnet_name                   = "AzureBastionSubnet"
    ip_name                       = "ipconfig3"
    private_ip_address_allocation = "Dynamic"
  }
  nic4 = {
    name                          = "nic04"
    location                      = "central india"
    resource_group_name           = "rg-mj-test-ci-01"
    virtual_network_name          = "vnet-mj-test-ci-01"
    subnet_name                   = "AzureFirewallSubnet"
    ip_name                       = "ipconfig4"
    private_ip_address_allocation = "Dynamic"
  }
  nic5 = {
    name                          = "nic05"
    location                      = "central india"
    resource_group_name           = "rg-mj-test-ci-01"
    virtual_network_name          = "vnet-mj-test-ci-01"
    subnet_name                   = "AzureAppGWSubnet"
    ip_name                       = "ipconfig5"
    private_ip_address_allocation = "Dynamic"
  }
}

vmm = {
    vm1 = {
                name = "vm-MyJio-01"
  resource_group_name = "rg-mj-test-ci-01"
  location = "central India"
  size = "Standard_B2s"
  admin_username = "vm01"
  admin_password = "vm01@123456789"
  virtual_network_name = "vnet-mj-test-ci-01"
  nic_name = "nic01"
    os_disk = {
    name              = "vm1sDisk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
    }
vm2 = {
                   name = "vm-MyJio-02"
  resource_group_name = "rg-mj-test-ci-01"
  location = "central India"
  size = "Standard_B2s"
  admin_username = "vm02"
  admin_password = "vm02@123456789"
  virtual_network_name = "vnet-mj-test-ci-01"
  nic_name = "nic02"
    os_disk = {
    name              = "vm2sDisk"
    caching           = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference = {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
    }
}

