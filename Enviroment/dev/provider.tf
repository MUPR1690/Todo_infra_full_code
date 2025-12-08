terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.53.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
subscription_id = "12070104-5366-47e7-ae69-d5a2bd98c79e"
}
