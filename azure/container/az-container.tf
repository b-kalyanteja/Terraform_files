terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.91.0"
    }
  }
}

resource "azurerm_storage_container" "ctr1" {
  name                  = "statefiles"
  storage_account_name  = "byandforterraform"
  container_access_type = "blob"  
} 