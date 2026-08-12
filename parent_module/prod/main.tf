module "resource_group" {
  source = "../../child_modules/azurerm_resource_group"
  rgs = {

    rg1 = {

      name     = "shri"
      location = "centralindia"
    }

  }
}

module "virtual_network" {
  source     = "../../child_modules/azurerm_virtual_network"
  depends_on = [module.resource_group]
  vnet = {
    vnet1 = {
      vnet_name           = "vnet1"
      location            = "westus"
      resource_group_name = "shri"
      address_space       = ["10.0.0.0/16"]

    }

  }
}
module "subnetwork" {
  source     = "../../child_modules/azurerm_subnetwork"
  depends_on = [module.virtual_network]
  subnet = {
    subnet1 = {
      subnet_name          = "frontend"
      resource_group_name  = "shri"
      virtual_network_name = "vnet1"
      address_prefixes     = ["10.0.1.0/24"]

    }


    subnet2 = {
      subnet_name          = "backend"
      resource_group_name  = "shri"
      virtual_network_name = "vnet1"
      address_prefixes     = ["10.0.2.0/24"]

    }
  }


}

