rgs = {
  rg1 = {
    name     = "preprodrg"
    location = "Central US"
  }
  rg2 = {
    name     = "preprodrg1"
    location = "Central India"
  }
}
vnets = {
  vnet1 = {
    name                = "preprodvnet"
    location            = "Central US"
    resource_group_name = "preprodrg"
    address_space       = ["10.0.0.0/16"]
  }
}
snets = {
  snet1 = {
    name                 = "frontend_subnet1"
    resource_group_name  = "preprodrg"
    virtual_network_name = "preprodvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet2 = {
    name                 = "frontend_subnet2"
    resource_group_name  = "preprodrg"
    virtual_network_name = "preprodvnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
pip = {
  vm1 = {
    public_ip_name      = "pipfrontendvm1"
    resource_group_name = "preprodrg"
    location            = "central US"
    allocation_method   = "Static"
  }

  vm2 = {
    public_ip_name      = "pipfrontendvm2"
    resource_group_name = "preprodrg"
    location            = "central US"
    allocation_method   = "Static"
  }
}
vms = {
  vm1 = {
    nic_name        = "nicfrontendvm1"
    location        = "central US"
    rg_name         = "preprodrg"
    nic_subnet_name = "frontend_subnet1"
    nic_vnet_name   = "preprodvnet"
    vm_name         = "frontendvm1"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "AshRit@241123"
    # secret_name     = "admin-password"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
  vm2 = {
    nic_name        = "nicfrontendvm2"
    location        = "central US"
    rg_name         = "preprodrg"
    nic_subnet_name = "frontend_subnet2"
    nic_vnet_name   = "preprodvnet"
    vm_name         = "frontendvm2"
    vm_size         = "Standard_B1s"
    admin_username  = "devopsadmin"
    admin_password  = "AshRit@241123"
    # secret_name     = "admin-password"
    image_publisher = "Canonical"
    image_offer     = "0001-com-ubuntu-server-jammy"
    image_sku       = "22_04-lts"
    image_version   = "latest"
  }
}