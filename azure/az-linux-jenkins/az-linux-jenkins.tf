terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.91.0"
    }
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "network"
  address_space       = ["10.3.0.0/16"]
  location            = var.loc
  resource_group_name = var.rgname
}

resource "azurerm_subnet" "subnet" {
  name                 = "internal"
  address_prefixes     = ["10.0.2.0/24"]
  resource_group_name  = var.rgname
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_public_ip" "ip" {
  name                = "jenkins-ip"
  location            = var.loc
  resource_group_name = var.rgname
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "nic" {
  name                = "jenkins-nic"
  location            = var.loc
  resource_group_name = var.rgname

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ip.id
  }
}

resource "azurerm_linux_virtual_machine" "vmware" {
  name                = "vm-jenkins"
  location            = var.loc
  resource_group_name = var.rgname
  size                = "Standard_DS1_v2"

  admin_username = "kalyan"
  admin_password = "apple@123456"

  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
