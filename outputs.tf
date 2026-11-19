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
