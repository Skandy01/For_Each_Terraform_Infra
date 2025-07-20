variable "storage_account_name" {
    description = "Name of the storage account"
    type = string
}

variable "location" {
    description = "Location of the storage account"
    type = string
}

variable "resource_group_name" {
    description = "Name of the resource group for the storage account"
    type = string
}

variable "account_tier" {
    description = "Account tier for the storage account (e.g., Standard, Premium)"
    type = string
}

variable "account_replication_type" {
    description = "Replication type for the storage account (e.g., LRS, GRS)"
    type = string
}
