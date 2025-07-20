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