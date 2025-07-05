terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.33.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "648bd49c-b688-4a29-ba41-86b01fb4bd75"
}