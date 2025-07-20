resource "azurerm_linux_virtual_machine" "virtual_machine" {

    name = var.virtual_machine_name
    resource_group_name = var.resource_group_name
    location = var.location
    size = var.virtual_machine_size
    
    admin_username = var.admin_username
    admin_password = var.admin_password
    disable_password_authentication = var.disable_password_authentication #False for password authentication

    network_interface_ids = [var.network_interface_ids]

    os_disk {
       
        caching           = var.os_disk_caching
        storage_account_type = var.os_disk_storage_account_type

    }

    source_image_reference  {

        publisher = var.image_publisher
        offer     = var.image_offer
        sku       = var.image_sku
        version   = var.image_version
    }
}