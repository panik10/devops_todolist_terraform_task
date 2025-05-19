# Deploying Todo List Application With Terraform

In this task, I have created an Azure Virtual Machine using Terraform and deployed a ToDo List application using a VM extension. The Terraform configuration will create all necessary resources, including a resource group, storage account, network security group, virtual network, subnet, public IP, and the virtual machine itself.

## Prerequisites

To run this project, Terraform and Azure CLI must be installed and configured on your machine.

## Steps to run the project

**1. Fork this Repository**

**2. Create a resource group and storage account for state**
- Using CLI create resource group:
    ```
    az group create --name <tfstate_resource_group_name> --location uksouth
    ```
- Create Storage Account:
    ```
    az storage account create \
  --name <storageaccountname> \
  --resource-group <tfstate_resource_group_name> \
  --location uksouth \
  --sku Standard_LRS \
  --encryption-services blob
  ```
- Create container:
    ```
    az storage container create \
  --name tfstate \
  --account-name <storageaccountname> \
  --resource-group <tfstate_resource_group_name> \
  --auth-mode login
  ```

**3. Adjust variables with your data if needed:**
- variables.tf file in root folder:
    * location
    * resource_group_name
    * virtual_network_name
    * vnet_address_prefix
    * subnet_name
    * subnet_address_prefix
    * network_security_group_name
    * public_ip_address_name
    * vm_name
    * vm_size
    * ssh_key_public
    * dns_label

**8. Initialize and Apply the Configuration**

**9. Verify the Deployment**

- Access the virtual machine using the public IP address.
- Verify the application is running by visiting the public IP in a web browser.
