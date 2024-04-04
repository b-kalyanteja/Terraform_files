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

