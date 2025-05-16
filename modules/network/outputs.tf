output "resource_group_name" {
  value = azurerm_resource_group.network.name
}

output "azurerm_virtual_network" {
    value = azurerm_virtual_network.network
}

output "subnet" {
  value = azurerm_virtual_network.network.subnet
}

output "public_ip" {
  value = azurerm_public_ip.network.ip_address
}
