resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "West Europe"
}

resource "azurerm_public_ip" "pip" {
  name = "test-pip"
  resource_group_name = "test-rg"
  location = "West Europe"
  allocation_method = "Static"
  sku = "Standard"
}