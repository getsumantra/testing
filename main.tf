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

resource "azurerm_subnet" "subnet" {
  name                 = "test-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [ "10.0.0.1"]
}