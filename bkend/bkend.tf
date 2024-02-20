terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = "sp=r&st=2024-02-20T14:54:49Z&se=2024-02-20T22:59:59Z&sv=2022-11-02&sr=c&sig=xEiExDlE1HYWd5Z96qpNLywmUA7hmmLaPiLYoJ1CepA%3D"

}
}

resource "local_file" "sample" {
    filename = "D:/new.txt"
    content = var.content
}