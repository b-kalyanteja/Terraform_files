provider "azurerm" {
  version = "~> 2.0"
  
  features {}
  
  subscription_id = "YOUR_SUBSCRIPTION_ID"
}


resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
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