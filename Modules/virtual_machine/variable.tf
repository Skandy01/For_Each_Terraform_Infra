variable "virtual_machine_name" {
    description = "The name of the virtual machine."
    type        = string

}

variable "reosurce_group_name" {

    description = "The name of the resource group in which the virtual machine will be created."
    type        = string
}

variable "location" {

    description = "The Azure region where the virtual machine will be created."
    type        = string
}

variable "virtual_machine_size" {
    description = "The size of the virtual machine."
    type        = string
}

variable "admin_username" {
    description = "The administrator username for the virtual machine."
    type        = string
}

variable "admin_password" {
    description = "The administrator password for the virtual machine."
    type        = string
}

variable "disable_password_authentication" {
    description = "Set to true to disable password authentication for the virtual machine."
    type        = bool
    default     = false
}

variable "network_interface_ids" {
    description = "A list of network interface IDs to associate with the virtual machine."
    type        = list(string)
}   





variable "os_disk_name" {
    description = "The name of the OS disk for the virtual machine."
    type        = string
}
variable "os_disk_caching" {
    description = "The caching type for the OS disk."
    type        = string
}
variable "os_disk_create_option" {
    description = "The create option for the OS disk."
    type        = string
}





variable "image_publisher" {
    description = "The publisher of the image used for the virtual machine."
    type        = string
}
variable "image_offer" {
    description = "The offer of the image used for the virtual machine."
    type        = string
}
variable "image_sku" {
    description = "The SKU of the image used for the virtual machine."
    type        = string
}
variable "image_version" {
    description = "The version of the image used for the virtual machine."
    type        = string
}
