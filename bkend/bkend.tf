terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = "sp=r&st=2024-02-20T14:44:14Z&se=2024-02-20T14:50:59Z&sv=2022-11-02&sr=c&sig=s9G8goZKUBLq%2F6qQVpLToTsKBbwAJkUwKIJsrQTXA74%3D"
    lease_id             = "c07e4f32-3a99-4d8a-abee-b15587416229"
  }
}


resource "local_file" "sample" {
    filename = "D:/new.txt"
    content = var.content
}
