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