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
  source              = "./module_rg"
  resource_group_name = "terra_module"
  acr_name            = "bullakalyanacr"
  location            = "eastus"
}

module "aks" {
  source                  = "./module_basic_aks"
  acr_resource_group_name = module.acr.resource_group_name
  cluster_name            = "dbullakalyancluster"
  location                = "eastus"
}

module "local_file" {
    source  = "./module_local_file" 
    content = module.acr.server_name
    # Optionally, you can specify a different file path if needed
    file_path = "D:/server_name.txt"
}

module "abc" {
  source = "./module_vnet"
  

  
}