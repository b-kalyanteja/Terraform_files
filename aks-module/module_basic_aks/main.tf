provider "azurerm" {}

variable "acr_resource_group_name" {
  description = "The name of the resource group where ACR is created."
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.acr_resource_group_name
  dns_prefix          = var.cluster_name
  kubernetes_version  = "1.21.5"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_DS2_v2"
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
