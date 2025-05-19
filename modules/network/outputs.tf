output "azurerm_virtual_network" {
    value = azurerm_virtual_network.network
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "public_ip_address_id" {
  value = azurerm_public_ip.network.id
}
