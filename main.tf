terraform {
backend "azurerm" {
  resource_group_name  = "DevSR1"
  storage_account_name = "devsac1"
  container_name       = "devscon"
  key                  = "ADO-pipeline.tfstate"
}
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id= "790084ef-9e9f-4ebf-9120-98c5295aba2a"
resource "azurerm_resource_group" "DevRGP" {
  name     = "devrgp-1"
  location = "West Europe"
}
}
