resource "azurerm_network_interface" "vm" {
  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name
  internal_dns_name_label = var.dns_label

  ip_configuration {
    name                          = "default"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_address_id
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  size                  = var.vm_size
  admin_username        = "er"


  network_interface_ids = [azurerm_network_interface.vm.id]

  admin_ssh_key {
    username   = "er"
    public_key = file(var.ssh_key_public)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

resource "azurerm_virtual_machine_extension" "vm" {
  name                 = "app-install-script-extension"
  virtual_machine_id   = azurerm_linux_virtual_machine.vm.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
    {
        "commandToExecute": "wget https://raw.githubusercontent.com/panik10/devops_todolist_terraform_task/main/install-app.sh && sh ./install-app.sh"
    }
SETTINGS


  tags = {
    environment = var.environment
  }
}
