rgs = {

  rg1 = {

    name     = "shri"
    location = "centralindia"
  }
}

vnet = {
  vnet1 = {
    vnet_name           = "vnet1"
    location            = "westus"
    resource_group_name = "shri"
    address_space       = ["10.0.0.0/16"]

  }
}
subnet = {
  subnet1 = {
    subnet_name          = "frontend_remote"
    resource_group_name  = "shri"
    virtual_network_name = "vnet2"
    address_prefixes     = ["10.1.1.0/24"]

  }

  subnet2 = {
    subnet_name          = "backend"
    resource_group_name  = "shri"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.2.0/24"]

  }
}