variable "vms" {
  type = map(object({
    nic_name        = string
    location        = string
    rg_name         = string
    nic_subnet_name = string
    nic_vnet_name   = string
    vm_name         = string
    vm_size         = string
    admin_username  = string
    admin_password  = string
    image_publisher = string
    image_offer     = string
    image_sku       = string
    image_version   = string
  }))
}
variable "puip" {
  type = map(string)
}