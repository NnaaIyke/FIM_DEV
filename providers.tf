# This is the provider for the Azure #

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "e7cdabaf-27fa-4d53-813a-12c905af1e8c"

}