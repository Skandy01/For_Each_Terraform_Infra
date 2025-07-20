module "resource_group" {

    source = "../Modules/Resource_Group"
    for_each = var.resource_group_info

    resource_group_name = each.value.resource_group_name
    resource_group_location = each.value.location

}

module "storage_account" {

    source = "../Modules/Storage_Account"
    depends_on = [module.resource_group]
    for_each = var.storage_account_info


    storage_account_name = each.value.storage_account_name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type

}

module "public_ip" {

    depends_on = [module.resource_group]
    source = "../Modules/public_ip"
    for_each = var.public_ip_info

    public_ip_name = each.value.public_ip_name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    allocation_method = each.value.allocation_method

}

module "virtual_network" {

    source = "../Modules/virtual_network"
    depends_on = [module.resource_group]
    for_each = var.virtual_network_info
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
    virtual_network_location = each.value.virtual_network_location
    virtual_network_address_space = each.value.virtual_network_address_space


}

module "subnet" {

    source = "../Modules/subnet"
    depends_on = [module.virtual_network]
    for_each = var.subnet_info

    subnet_name = each.value.subnet_name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes = each.value.subnet_address_prefix
}

module "network_interface" {

    source = "../Modules/network_interface_card"
    depends_on = [module.public_ip, module.subnet]

    for_each = var.network_interface_info

    network_interface_name = each.value.network_interface_name
    resource_group_name = each.value.resource_group_name
    location = each.value.location

    ip_configuration_name = each.value.ip_configuration_name
    private_ip_address_allocation = each.value.private_ip_address_allocation

    subnet_id = data.azurerm_subnet.subnet[each.value.subnet_key].id
    public_ip_address_id = data.azurerm_public_ip.pip[each.value.pip_key].id
    
    
}

module "virtual_machine" {

    source = "../Modules/virtual_machine"
    depends_on = [module.network_interface, module.public_ip]
    for_each = var.virtual_machine_info
    
    virtual_machine_name = each.value.virtual_machine_name
    resource_group_name = each.value.resource_group_name

    location = each.value.location
    virtual_machine_size = each.value.virtual_machine_size

    network_interface_ids = data.azurerm_network_interface.nic[each.value.network_interface_key].id

    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    disable_password_authentication = each.value.disable_password_authentication

    os_disk_caching = each.value.os_disk_caching
    os_disk_storage_account_type = each.value.os_disk_storage_account_type

    image_offer = each.value.image_offer
    image_publisher = each.value.image_publisher
    image_sku = each.value.image_sku
    image_version = each.value.image_version

}