resource "azurerm_network_security_group" "network" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "network" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = var.subnet_name
    address_prefixes = ["10.0.0.0/24"]
  }

  tags = {
    environment = "Development"
  }
}

resource "azurerm_public_ip" "network" {
  name                = var.pip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Basic"

  tags = {
    environment = "development"
  }
}