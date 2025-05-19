resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "main" {
  name                     = var.storage_acc_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

module "network" {
  source                = "./modules/network/"
  environment           = var.environment
  location              = var.location
  pip_label_prefix      = "matetask"
  resource_group_name   = var.resource_group_name
  vnet_name             = var.virtual_network_name
  vnet_address_prefix   = var.vnet_address_prefix
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  nsg_name              = var.network_security_group_name
  pip_name              = var.public_ip_address_name
}

module "vm" {
  source               = "./modules/compute/"
  vm_name              = var.vm_name
  ssh_key_public       = var.ssh_key_public
  dns_label            = var.dns_label
  public_ip_address_id = module.network.public_ip_address_id
  vm_size              = var.vm_size
  environment          = var.environment
  resource_group_name  = var.resource_group_name
  subnet_id            = module.network.subnet_id
  location             = var.location
}
