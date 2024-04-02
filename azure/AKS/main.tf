# Include the provider configuration
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

# Import variables
variable "resource_group_name" {}
variable "cluster_name" {}
variable "acr_name" {}

# Import resources
provider "azurerm" {}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "East US"  # Update with your desired Azure region
}

# Create an Azure Container Registry
resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"  # Update with your desired SKU
}

# Create an Azure Kubernetes Service (AKS) cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.cluster_name
  kubernetes_version  = "1.21.5"  # Update with your desired Kubernetes version

  default_node_pool {
    name            = "default"
    node_count      = 1  # Update with your desired node count
    vm_size         = "Standard_DS2_v2"  # Update with your desired VM size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
    user        = "kalyan"
    mode        = "Terraform"
  }
}
