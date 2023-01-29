
resource "azurerm_virtual_network" "test" {
  name                = var.azurerm_virtual_network
  address_space       = ["10.1.0.0/16"]
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
}

resource "azurerm_subnet" "test1" {
  name = "public_subnet"
  # count                = 2
  # name                 = var.azurerm_subnet[count.index]
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = ["10.1.0.0/24"]
  # address_prefixes = var.address_prefixes[count.index]
}

resource "azurerm_subnet" "test2" {
  name                 = "private_subnet"
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = ["10.1.1.0/24"]
}

resource "azurerm_subnet" "test3" {
  name                 = "private_subnet"
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = ["10.1.1.1/32"]
}