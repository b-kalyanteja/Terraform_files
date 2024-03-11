variable "resource_group_name" {
  description = "The name of the resource group in which to create AKS and ACR"
  default = "kalyan_deploy_01"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  default = "demo"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  default = "democontainer"
}
