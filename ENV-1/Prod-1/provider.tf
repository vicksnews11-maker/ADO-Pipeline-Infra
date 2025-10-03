terraform {
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendstoragedd"
    container_name       = "backendcontainer"
    key                  = "prod.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "790084ef-9e9f-4ebf-9120-98c5295aba2a"
}
