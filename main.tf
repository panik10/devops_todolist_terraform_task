resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network/"
  environment = var.environment
  location = var.location
  pip_label_prefix = "matetask"
}

module "vm" {
  source = "./modules/compute/"
  vm_size = var.vm_size
  environment = var.environment
  resource_group_name = var.resource_group_name
}
