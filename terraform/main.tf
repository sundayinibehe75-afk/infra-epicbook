locals {
  tags = {
    project = "epicbook"
  }
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.tags
}

module "network" {
  source = "./modules/network"

  resource_group_name  = azurerm_resource_group.main.name
  location             = azurerm_resource_group.main.location
  project_name         = var.project_name
  vnet_cidr            = var.vnet_cidr
  frontend_subnet_cidr = var.frontend_subnet_cidr
  backend_subnet_cidr  = var.backend_subnet_cidr
  db_subnet_cidr       = var.db_subnet_cidr
  allowed_admin_ip     = var.allowed_admin_ip
  pipeline_agent_ip    = var.pipeline_agent_ip
  backend_app_port     = var.backend_app_port
  tags                 = local.tags
}

module "compute" {
  source = "./modules/compute"

  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  vm_size             = var.vm_size
  vm_admin_username   = var.vm_admin_username
  ssh_public_key_path = var.ssh_public_key_path
  frontend_subnet_id  = module.network.frontend_subnet_id
  backend_subnet_id   = module.network.backend_subnet_id
  tags                = local.tags
}

module "database" {
  source = "./modules/database"

  resource_group_name   = azurerm_resource_group.main.name
  location              = azurerm_resource_group.main.location
  mysql_server_name     = var.mysql_server_name
  mysql_sku_name        = var.mysql_sku_name
  db_admin_username     = var.db_admin_username
  db_admin_password     = var.db_admin_password
  db_name               = var.db_name
  db_subnet_id          = module.network.db_subnet_id
  private_dns_zone_id   = module.network.private_dns_zone_id
  dns_zone_vnet_link_id = module.network.private_dns_zone_vnet_link_id
  tags                  = local.tags
}
