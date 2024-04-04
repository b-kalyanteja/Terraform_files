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

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}



output "location" {
  value = azurerm_resource_group.rg.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "server_name" {
  value = azurerm_container_registry.acr.login_server
}