# Non-sensitive Terraform inputs used by the Azure DevOps pipeline
# (terraform plan -var-file="pipeline.tfvars"). This file IS committed.
#
# Deliberately NOT here:
#   db_admin_username / db_admin_password -> variable group (TF_VAR_* in the pipeline)
#   allowed_admin_ip / pipeline_agent_ip  -> pipeline variables adminIp / pipelineAgentIp

location            = "southindia"
resource_group_name = "epicbook-rg"

# Relative to terraform/ (the pipeline's working directory). Commit the PUBLIC
# key at terraform/epicbook-key.pub - never a path under ~ and never a private key.
ssh_public_key_path = "epicbook-key.pub"

# CHANGE ME: must be globally unique in Azure (lowercase letters, digits, hyphens).
mysql_server_name = "epicbook-db"

db_name = "bookstore"

vm_size              = "Standard_B2ats_v2"
vm_admin_username    = "azureuser"
vnet_cidr            = "10.20.0.0/16"
frontend_subnet_cidr = "10.20.1.0/24"
backend_subnet_cidr  = "10.20.2.0/24"
db_subnet_cidr       = "10.20.3.0/24"
backend_app_port     = 8080
mysql_sku_name       = "B_Standard_B1ms"
project_name         = "epicbook"
