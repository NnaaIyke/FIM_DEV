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

  subscription_id = "e5cdabaf-11fa-4d00-813a-752c989af1e0c"

}
