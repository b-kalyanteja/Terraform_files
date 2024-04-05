terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.91.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b5e6643b-f1e3-47cf-b754-afa812bad9e1"
}


module "rg" {
  source              = "./module_basic_acr"
  resource_group_name = "cloud_kalyan"
  location            = "northeurope"
}

module "vnet" {
  source                  = "./module_vnet"
  vnet_name               = "tempnet"
  address_space           = ["10.5.0.0/16"]
  location                = "northeurope"
}
#module to create Vnet and subnets
module "vms" {
  source                  = "./module_vms"
  location                = "eastus"
}
module "local_file" {
    source  = "./module_local_file"
    content = module.acr.server_name  # from the module "acr" we have to take output "server_name". 
    # so sgo to module.acr 's source. In there we have output

    # Optionally, you can specify a different file path if needed
    file_path = "D:/server_name.txt"
}