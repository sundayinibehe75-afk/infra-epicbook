output "frontend_subnet_id" {
  description = "ID of the frontend subnet"
  value       = azurerm_subnet.frontend.id
}

output "backend_subnet_id" {
  description = "ID of the backend subnet"
  value       = azurerm_subnet.backend.id
}

output "db_subnet_id" {
  description = "ID of the database subnet"
  value       = azurerm_subnet.database.id
}

output "frontend_nsg_id" {
  description = "ID of the frontend network security group"
  value       = azurerm_network_security_group.frontend.id
}

output "backend_nsg_id" {
  description = "ID of the backend network security group"
  value       = azurerm_network_security_group.backend.id
}

output "database_nsg_id" {
  description = "ID of the database network security group"
  value       = azurerm_network_security_group.database.id
}

output "private_dns_zone_id" {
  description = "ID of the private DNS zone used for MySQL Flexible Server private access"
  value       = azurerm_private_dns_zone.mysql.id
}

output "private_dns_zone_vnet_link_id" {
  description = "ID of the private DNS zone virtual network link"
  value       = azurerm_private_dns_zone_virtual_network_link.mysql.id
}
