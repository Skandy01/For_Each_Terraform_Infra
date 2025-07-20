variable "subnet_name" {
    description = "value for the resource group name"
    type = string
}

variable "resource_group_name" {
    description = "value for the resource group name"
    type = string
}


variable "virtual_network_name" {
    description = "value for the virtual network name"
    type = string
}
variable "address_prefixes" {
    description = "List of address prefixes for the subnet"
    type = list(string)
}