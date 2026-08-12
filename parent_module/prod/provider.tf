terraform {
  backend "azurerm" {
    resource_group_name = "shri"
    storage_account_name = "abcd123454321"
    container_name = "container"
    key = "pipeline.tfstate"
    
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.77.0"
    }
  }
}

provider "azurerm" {
  features {}
}