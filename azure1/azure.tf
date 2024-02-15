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
  tenant_id = "4e21a9c0-bf13-4006-95a1-b6e3b71c79eb"  
}

resource "azurerm_storage_account" "example" {
  name                     = "byandforterraform"
  resource_group_name      = "vmware-rg" 
  location                 = "japaneast" 
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "cal production"
  }
}
