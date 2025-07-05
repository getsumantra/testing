resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "test-vnet"
  address_space       = [ "10.0.0.0/16" ]
  location            = "West Europe"
  resource_group_name = "West Europe"
}

resource "azurerm_resource_group" "rg02" {
  name = "test-rg02"
  location = "west europe"
}