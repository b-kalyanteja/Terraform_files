terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = "sp=racwdli&st=2024-02-20T14:54:49Z&se=2024-02-20T15:05:59Z&sv=2022-11-02&sr=c&sig=%2BTTxiOO0Sch98fm0QtBWDj9Ig%2BQnQFrWkBUbKrXdWQA%3D"
}
}

resource "local_file" "sample" {
    filename = "D:/neew.txt"
    content = var.content
}