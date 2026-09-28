variable "resource_group_name" {
  description = "Name of the resource group to deploy compute resources into"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vm_size" {
  description = "VM size used for both the frontend and backend virtual machines"
  type        = string
}

variable "vm_admin_username" {
  description = "Admin username for the frontend and backend VMs"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to the SSH public key file used for VM admin access"
  type        = string
}

variable "frontend_subnet_id" {
  description = "ID of the subnet the frontend VM's NIC is attached to"
  type        = string
}

variable "backend_subnet_id" {
  description = "ID of the subnet the backend VM's NIC is attached to"
  type        = string
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default     = {}
}
