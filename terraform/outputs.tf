output "app_public_ip" {
  description = "Public IP address of the frontend VM"
  value       = module.compute.frontend_public_ip
}

output "backend_ansible_host" {
  description = "Public IP address of the backend VM, used by Ansible for management access"
  value       = module.compute.backend_public_ip
}

output "backend_private_ip" {
  description = "Private IP address of the backend VM, used by Nginx on the frontend"
  value       = module.compute.backend_private_ip
}

output "mysql_fqdn" {
  description = "Fully qualified domain name of the MySQL Flexible Server"
  value       = module.database.mysql_fqdn
}
