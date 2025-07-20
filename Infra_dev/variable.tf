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

variable "public_ip_info" {
    description = "Information for the public IPs to be created"
    type = map(object({
        public_ip_name = string
        location = string
        resource_group_name = string
        allocation_method = string
    }))
}

variable "virtual_network_info" {

    description = "values for the virtual network"
    type = map(object (
        {
        virtual_network_name = string
        resource_group_name = string
        virtual_network_location = string
        virtual_network_address_space = list(string)
        }    
    ))
}

variable "subnet_info" {

    description = "value for the subnet"
    type = map(object(
        {
            subnet_name = string
            resource_group_name = string
            virtual_network_name = string
            subnet_address_prefix = list(string)
        }
    ))
}