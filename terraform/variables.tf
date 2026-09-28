variable "location" {
  description = "Azure region to deploy resources into"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group that will contain all EpicBook resources"
  type        = string
  default     = "epicbook-rg"
}

variable "project_name" {
  description = "Short project name used for tagging and naming (e.g. private DNS zone)"
  type        = string
  default     = "epicbook"
}

variable "vnet_cidr" {
  description = "CIDR range for the EpicBook virtual network"
  type        = string
  default     = "10.20.0.0/16"
}

variable "frontend_subnet_cidr" {
  description = "CIDR range for the frontend subnet"
  type        = string
  default     = "10.20.1.0/24"
}

variable "backend_subnet_cidr" {
  description = "CIDR range for the backend subnet"
  type        = string
  default     = "10.20.2.0/24"
}

variable "db_subnet_cidr" {
  description = "CIDR range for the database subnet (must be delegated to MySQL Flexible Server)"
  type        = string
  default     = "10.20.3.0/24"
}

variable "vm_size" {
  description = "VM size used for both the frontend and backend virtual machines"
  type        = string
  default     = "Standard_B1s"
}

variable "vm_admin_username" {
  description = "Admin username for the frontend and backend VMs"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key file used for VM admin access"
  type        = string
}

variable "allowed_admin_ip" {
  description = "IP address (CIDR) allowed to SSH into the VMs for administration"
  type        = string
}

variable "pipeline_agent_ip" {
  description = "IP address (CIDR) of the CI/CD pipeline agent allowed to SSH into the VMs, if any"
  type        = string
  default     = ""
}

variable "backend_app_port" {
  description = "TCP port the backend application listens on, reachable only from the frontend subnet"
  type        = number
  default     = 8080
}

variable "mysql_server_name" {
  description = "Globally unique name for the MySQL Flexible Server"
  type        = string
}

variable "mysql_sku_name" {
  description = "SKU name for the MySQL Flexible Server"
  type        = string
  default     = "B_Standard_B1ms"
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
  default     = "epicbook"
}
