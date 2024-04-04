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

resource "azurerm_virtual_network" "vnet" {
  name                = "default"
  address_space       = ["10..0.0/16"]
  location            = var.location
  resource_group_name = "default"
}