module "acr" {
  source              = "./module_basic_acr"
  resource_group_name = "cloud_kalyan"
  acr_name            = "sample_acr"
  location            = "east us 1"
}

module "aks" {
  source                  = "./module_basic_aks"
  acr_resource_group_name = module.acr.resource_group_name
  cluster_name            = "demo_cluster"
  location                = "east us 1"
}

module "local_file" {
    source  = "./module_local_file"
    content = module.acr.server_name
    # Optionally, you can specify a different file path if needed
    file_path = "D:/server_name.txt"
}