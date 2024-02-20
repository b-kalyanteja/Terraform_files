terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = var.token

}
}

resource "local_file" "sample" {
    filename = "D:/neew.txt"
    content = var.content
}