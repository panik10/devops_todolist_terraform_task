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

variable "subnet_name" {
  default = "default"
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
