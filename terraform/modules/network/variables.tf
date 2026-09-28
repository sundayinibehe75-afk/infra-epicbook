variable "resource_group_name" {
  description = "Name of the resource group to deploy networking resources into"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "project_name" {
  description = "Short project name used for naming (e.g. private DNS zone)"
  type        = string
}

variable "vnet_cidr" {
  description = "CIDR range for the virtual network"
  type        = string
}

variable "frontend_subnet_cidr" {
  description = "CIDR range for the frontend subnet"
  type        = string
}

variable "backend_subnet_cidr" {
  description = "CIDR range for the backend subnet"
  type        = string
}

variable "db_subnet_cidr" {
  description = "CIDR range for the database subnet"
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
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default     = {}
}
