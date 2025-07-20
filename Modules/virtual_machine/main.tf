resource "azurerm_lniux_virtual_machine" "virtual_machine" {

    name = var.virtual_machine_name
    resource_group_name = var.resource_group_name
    location = var.location
    size = var.virtual_machine_size
    admin_username = var.admin_username
    admin_password = var.admin_password
    disable_password_authentication = var.disable_password_authentication #False for password authentication

    network_interface_ids = var.network_interface_ids

    os_disk {
        name              = var.os_disk_name
        caching           = var.os_disk_caching
        create_option     = var.os_disk_create_option

    }

    storage_image_reference {
        publisher = var.image_publisher
        offer     = var.image_offer
        sku       = var.image_sku
        version   = var.image_version
    }
}