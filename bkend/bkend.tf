terraform {
  backend "azurerm" {
    storage_account_name = "kalyandatalake"
    container_name       = "terra"
    key                  = "terraform.tfstate"
  }
}

