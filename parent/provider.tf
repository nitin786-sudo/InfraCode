terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "abd436d3-3a4b-4e23-886c-7131af8c24f9"
}