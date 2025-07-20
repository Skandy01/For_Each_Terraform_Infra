variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the resource group in which the virtual network will be created."
  type        = string
}

variable "virtual_network_location" {
  description = "The Azure region where the virtual network will be created."
  type        = string
}

variable "virtual_network_address_space" {
  description = "The address space for the virtual network in CIDR notation."
  type        = list(string)
}
