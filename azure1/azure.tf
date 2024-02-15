provider "azurerm" {
  features {}
  tenet_id = "4e21a9c0-bf13-4006-95a1-b6e3b71c79eb"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageaccount"
  resource_group_name      = "vmware-rg"
  location                 = "Japan East"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "cal production"
  }
}

