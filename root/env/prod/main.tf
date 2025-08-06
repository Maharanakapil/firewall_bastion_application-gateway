module "rg" {
  source = "../../../child/RG"
  rgc    = var.rgm
}
module "vnet" {
  source = "../../../child/VNET"
  vnetc  = var.vnetm
}
module "subnet" {
  source  = "../../../child/Subnet"
  subnetc = var.subnetm
}
module "nic" {
  source = "../../../child/NIC"
  nics   = var.nicm

}
module "vmm" {
  source = "../../../child/VM"
  vmc    = var.vmm

}
module "bastion" {
  source   = "../../../child/Bastion"
  bastionc = var.bastionm

}