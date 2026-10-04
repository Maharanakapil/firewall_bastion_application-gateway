module "bastion" {
  source   = "../../../child/Bastion"
  bastionc = var.bastionm

}
module "firewall" {
  source = "../../../child/Firewall"
  firewallc = var.firewallm
}

module "appgw" {
  source = "../../../child/App GW"
  appgwc = var.Appgwm
}
