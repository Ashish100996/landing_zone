module "resourcegroup" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}
module "virtualnetwork" {
  depends_on = [module.resourcegroup]
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.virtualnetwork]
  source     = "../../modules/azurerm_subnet"
  snets      = var.snets
}
module "publicip" {
  depends_on = [module.resourcegroup]
  source     = "../../modules/azurerm_public_ip"
  pip        = var.pip
}
module "virtualmachine" {
  depends_on = [module.subnet, module.publicip]
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vms
  puip       = module.publicip.pip
}