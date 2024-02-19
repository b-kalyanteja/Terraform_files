terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = "?sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2024-02-20T02:57:10Z&st=2024-02-19T18:57:10Z&spr=https,http&sig=zJtEucmeHbHrLD4QJeI4CJpAU0O77umH4%2FSV%2Bokcp8o%3D"
  }
}


resource "local_file" "sample" {
    filename = "D:/new.txt"
    content = "Hello there, this is my new file updated in linux and pushed to git ! "
}
