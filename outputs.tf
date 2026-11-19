output "resource_group_name" {
  description = "Name der Resource Group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "Azure-ID der Resource Group"
  value       = azurerm_resource_group.main.id
}

output "location" {
  description = "Verwendete Azure-Region"
  value       = azurerm_resource_group.main.location
}

output "vnet_name" {
  description = "Name des VNets"
  value       = azurerm_virtual_network.main.name
}

output "subnet_ids" {
  description = "IDs der Subnetze (Name => ID)"
  value       = { for name, subnet in azurerm_subnet.main : name => subnet.id }
}
