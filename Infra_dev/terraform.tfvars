resource_group_info = {

    "rg1" = {
        resource_group_name = "rg_ace"
        location = "Central India"
    }

    "rg2" = {
        resource_group_name = "rg_create"
        location = "Central India"
    }
}

storage_account_info = {

    "stg1" = {

        storage_account_name = "stgace"
        location = "Central India"
        resource_group_name = "rg_ace"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }

    "stg2" = {

        storage_account_name = "stgcreate"
        location = "Central India"
        resource_group_name = "rg_create"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
}

virtual_network_info = {

    "vnet1" = {
        virtual_network_name = "vnetace"
        resource_group_name = "rg_ace"
        virtual_network_location = "Central India"
        virtual_network_address_space = ["10.0.0/16"]
}
    "vnet2" = {
        virtual_network_name = "vnetcreate"
        resource_group_name = "rg_create"
        virtual_network_location = "Central India"
        virtual_network_address_space = ["10.1.0/16"]
    }
}

subnet_info = {

    "subnet1"  = {

        subnet_name = "subnet_frontend"
        resource_group_name = "rg_ace"
        virtual_network_name = "vnetace"
        subnet_address_prefix = ["10.0.0.0/24 "]    
        }
    "subnet2"  = {
        subnet_name = "subnet_backend"
        resource_group_name = "rg_ace"
        virtual_network_name = "vnetace"
        subnet_address_prefix = ["10.0.1.0/24"]
    }
}

public_ip_info = {

  "pip1" = {
    public_ip_name = "pipace"
    location = "Central India"
    resource_group_name = "rg_ace"
    allocation_method = "Dynamic"
    
  }
    "pip2" = {
        public_ip_name = "pipcreate"
        location = "Central India"
        resource_group_name = "rg_ace"
        allocation_method = "Dynamic"
    }
}



network_interface_info = {

  "nic1" = {
    network_interface_name = "nic_frontend"
    resource_group_name = "rg_ace"
    location = "Central India"

    private_ip_address_allocation = "Dynamic"
    ip_configuration_name = "internal"
    pip_key = "pip1"
    subnet_key = "subnet1"
  }

    "nic2" = {

        network_interface_name = "nic_backend"
        resource_group_name = "rg_ace"
        location = "Central India"

        private_ip_address_allocation = "Dynamic"
        ip_configuration_name = "internal"
        pip_key = "pip2"
        subnet_key = "subnet2"
    }
}


virtual_machine_info = {

  "vm1" = {

    virtual_machine_name = "vm_frontend"
    resource_group_name = "rg_ace"
    location = "Central India"
    virtual_machine_size = "Standard_B1s"

    network_interface_key = "nic1"

    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234"
    disable_password_authentication = false

    os_disk_caching = "ReadWrite"
    os_disk_storage_account_type = "Standard_LRS"

    image_offer = "UbuntuServer"
    image_publisher = "Canonical"
    image_sku = "18.04-LTS"
    image_version = "latest"

  }

    "vm2" = {
    
        virtual_machine_name = "vm_backend"
        resource_group_name = "rg_ace"
        location = "Central India"
        virtual_machine_size = "Standard_B1s"
    
        network_interface_key = "nic2"
    
        admin_username = "azureuser"
        admin_password = "P@ssw0rd1234"
        disable_password_authentication = false
    
        os_disk_caching = "ReadWrite"
        os_disk_storage_account_type = "Standard_LRS"
    
        image_offer = "UbuntuServer"
        image_publisher = "Canonical"
        image_sku = "18.04-LTS"
        image_version = "latest"
    
    }
}
