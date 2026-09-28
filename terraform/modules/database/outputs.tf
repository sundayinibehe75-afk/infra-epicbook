output "mysql_fqdn" {
  description = "Fully qualified domain name of the MySQL Flexible Server"
  value       = azurerm_mysql_flexible_server.main.fqdn
}

output "mysql_server_id" {
  description = "ID of the MySQL Flexible Server"
  value       = azurerm_mysql_flexible_server.main.id
}
