variable "resource_group_name" {
  description = "Name of the resource group to deploy the database into"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "mysql_server_name" {
  description = "Globally unique name for the MySQL Flexible Server"
  type        = string
}

variable "mysql_sku_name" {
  description = "SKU name for the MySQL Flexible Server"
  type        = string
}

variable "db_admin_username" {
  description = "Administrator username for the MySQL Flexible Server"
  type        = string
  sensitive   = true
}

variable "db_admin_password" {
  description = "Administrator password for the MySQL Flexible Server"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Name of the application database created on the MySQL Flexible Server"
  type        = string
}

variable "db_subnet_id" {
  description = "ID of the delegated database subnet for private VNet access"
  type        = string
}

variable "private_dns_zone_id" {
  description = "ID of the private DNS zone used for MySQL Flexible Server private access"
  type        = string
}

variable "dns_zone_vnet_link_id" {
  description = "ID of the private DNS zone virtual network link (dependency to ensure the link exists before server creation)"
  type        = string
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default     = {}
}
