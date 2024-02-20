terraform {
  backend "azurerm" {
    storage_account_name = "byandforterraform"
    container_name       = "statefiles"
    key                  = "terraform.tfstate"
    sas_token            = "BlobEndpoint=https://byandforterraform.blob.core.windows.net/;QueueEndpoint=https://byandforterraform.queue.core.windows.net/;FileEndpoint=https://byandforterraform.file.core.windows.net/;TableEndpoint=https://byandforterraform.table.core.windows.net/;SharedAccessSignature=sv=2022-11-02&ss=bfqt&srt=sco&sp=rwdlacupiytfx&se=2024-02-20T23:04:19Z&st=2024-02-20T15:04:19Z&spr=https,http&sig=HLADtaQ79RyKJWVTSVHmcQ17YfqY%2Bqax5580mB%2FeGqs%3D"
  }
}

resource "local_file" "sample" {
    filename = "D:/neew.txt"
    content = var.content
}