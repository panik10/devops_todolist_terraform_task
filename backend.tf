terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-storage"
    storage_account_name = "mymatetfstatestorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
