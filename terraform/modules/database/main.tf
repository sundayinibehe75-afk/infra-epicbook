resource "azurerm_mysql_flexible_server" "main" {
  name                   = var.mysql_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = "8.0.21"
  sku_name               = var.mysql_sku_name
  administrator_login    = var.db_admin_username
  administrator_password = var.db_admin_password

  delegated_subnet_id = var.db_subnet_id
  private_dns_zone_id = var.private_dns_zone_id

  backup_retention_days        = 1
  geo_redundant_backup_enabled = false

  storage {
    size_gb = 20
  }

  tags = var.tags

  depends_on = [var.dns_zone_vnet_link_id]

  lifecycle {
    ignore_changes = [zone]
  }
}

resource "azurerm_mysql_flexible_database" "main" {
  name                = var.db_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mysql_flexible_server.main.name
  charset             = "utf8mb4"
  collation           = "utf8mb4_unicode_ci"
}
