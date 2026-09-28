output "frontend_public_ip" {
  description = "Public IP address of the frontend VM"
  value       = azurerm_public_ip.frontend.ip_address
}

output "backend_public_ip" {
  description = "Public IP address of the backend VM, used by Ansible for management access"
  value       = azurerm_public_ip.backend.ip_address
}

output "backend_private_ip" {
  description = "Private IP address of the backend VM, used by Nginx on the frontend"
  value       = azurerm_network_interface.backend.private_ip_address
}
