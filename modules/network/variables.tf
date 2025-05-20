variable "resource_group_name" {
  default = "default-rg"
}

variable "location" {
  default = "West Europe"
}

variable "environment" {
  default = "development"
}

variable "app_prefix" {
  default = "todoapp"
}

variable "vnet_name" {
  default = "vnet"
}

variable "vnet_address_prefix" {
  default = "10.0.0.0/16"
}

variable "subnet_name" {
  default = "default"
}

variable "subnet_address_prefix" {
  default = "10.0.0.0/24"
}

variable "nsg_name" {
  default = "defaultnsg"
}

variable "pip_name" {
  default = "linuxboxip"
}

variable "pip_label_prefix" {
  default = "matetask"
}

variable "dns_label" {
  default = "matetask"
}
