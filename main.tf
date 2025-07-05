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

resource "azurerm_storage_account" "stg01" {
  name                     = "teststorageacct1"
  resource_group_name      = "test-rg"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}