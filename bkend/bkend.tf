terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
  }
}


resource "local_file" "sample" {
    filename = "D:/new.txt"
    content = "Hello there, this is my new file updated in linux and pushed to git ! "
}
