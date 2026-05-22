output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "management_subnet_id" {
  value = azurerm_subnet.management.id
}