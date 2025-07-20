variable "resource_group_info" {

    description = "Information about the resource groups to be created"
    type = map(object({
        resource_group_name = string
        location = string
    }))
}

variable "storage_account_info" {

    description = "Information for the storage accounts to be created"
    type = map(object
    (
        {
        storage_account_name = string
        location = string
        resource_group_name = string
        account_tier = string
        account_replication_type = string
     }
    )
    )
}