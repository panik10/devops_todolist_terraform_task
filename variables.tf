variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "development"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "mate-azure-task-12"
}

variable "storage_acc_name" {
  description = "Name of the storage account"
  type        = string
  default     = "tfstatestorage2313"
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet"
}

variable "vnet_address_prefix" {
  description = "Address prefix for VNet"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "default"
}

variable "subnet_address_prefix" {
  description = "Address prefix for subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "network_security_group_name" {
  description = "Name of the NSG"
  type        = string
  default     = "defaultnsg"
}

variable "public_ip_address_name" {
  description = "Public IP name"
  type        = string
  default     = "linuxboxpip"
}

variable "vm_name" {
  description = "Virtual machine name"
  type        = string
  default     = "matebox"
}

variable "vm_size" {
  description = "VM size"
  type        = string
  default     = "Standard_B1s"
}

variable "ssh_key_public" {
  description = "SSH public key content"
  type        = string
  default     = "~/.ssh/linuxbox_rsa.pub"
}

variable "dns_label" {
  description = "DNS label for public IP"
  type        = string
  default     = "matetask"
}
