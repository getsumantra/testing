resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg02" {
  name = "test-rg02"
  location = "west europe"
}