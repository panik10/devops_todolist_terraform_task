variable "location" {
  default = "West Europe"
}

variable "resource_group_name" {
  default = "default-rg"
}

variable "vm_name" {
    default = "matebox"
}

variable "subnet_id" {
  default = "1"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "environment" {
  default = "development"
}

variable "vm_image" {
  default = "Ubuntu2204"
}

variable "ssh_key_public" {
  default = "~/.ssh/1744645180.pub"
}

variable "dns_label" {
  default = "matetask"
}

variable "public_ip_address_id" {
  default = "1"
}
