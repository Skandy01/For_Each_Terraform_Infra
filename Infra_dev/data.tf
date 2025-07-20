data "azurerm_public_ip" "pip" {

    for_each = var.public_ip_info  
    depends_on = [module.public_ip]
    name = each.value.public_ip_name
    resource_group_name = each.value.resource_group_name

}

data "azurerm_subnet" "subnet" {

    for_each = var.subnet_info
    depends_on = [module.subnet]

    name = each.value.subnet_name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
}

data "azurerm_network_interface" "nic" {

    for_each = var.network_interface_info
    depends_on = [module.network_interface]
    
    name = each.value.network_interface_name
    resource_group_name = each.value.resource_group_name
    
}