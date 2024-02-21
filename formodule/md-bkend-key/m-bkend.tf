terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = "sp=r&st=2024-02-21T16:14:26Z&se=2024-02-22T17:14:26Z&sv=2022-11-02&sr=c&sig=34Hjtd9INMcsc94Xo%2FEuMeVO707JczlW07ib1Ge%2BiRc%3D"
  }
}

resource "local_file" "sample" {
    filename = "D:/neew file.txt"
    content = var.content
}