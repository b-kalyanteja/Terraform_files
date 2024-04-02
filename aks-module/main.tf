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


module "acr" {
  source              = "./module_basic_acr"
  resource_group_name = "cloud_kalyan"
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