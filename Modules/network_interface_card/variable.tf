variable "network_interface_name" {
    description = "The name of the network interface"
    type        = string
}

variable "location" {
    description = "The Azure region where the network interface will be created"
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group where the network interface will be created"
    type        = string
}

variable "ip_configuration_name" {
    description = "The name of the IP configuration for the network interface"
    type        = string
}

variable "subnet_id" {
    description = "The ID of the subnet where the network interface will be connected"
    type        = string
}

variable "private_ip_address_allocation" {
    description = "The method of private IP address allocation (e.g., Static or Dynamic)"
    type        = string
    default     = "Dynamic"
}

variable "public_ip_address_id" {
    description = "The ID of the public IP address associated with the network interface"
    type        = string
    default     = null
}
