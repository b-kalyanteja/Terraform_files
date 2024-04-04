terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.91.0"
    }
  }
}
# rewuired providerss fro this file or module to execute

provider "azurerm" {
  features {}
  subscription_id = "b5e6643b-f1e3-47cf-b754-afa812bad9e1"
}

# configuring the rewuired providers

resource "azurerm_resource_group" "rg" {
  name     = "default"
  location = "eastus"
}



output "location" {
  value = azurerm_resource_group.rg.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}



# this is one of the outputs --> from resource "azure_rm..." under name "acr",
# we get login_server when created, this will be in documentation. 
# This can be used else where too