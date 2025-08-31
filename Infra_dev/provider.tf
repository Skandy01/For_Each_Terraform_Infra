terraform {

    required_version = ">= 1.5.0"

    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.37.0"
        }
    }
}

provider "azurerm" {
    features {}
    subscription_id = "9c521f44-ae8d-4736-9337-a8ab0038c6c7"
}
