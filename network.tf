
resource "azurerm_virtual_network" "test" {
  name                = var.azurerm_virtual_network
  address_space       = var.vnetaddress_space
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
}

resource "azurerm_subnet" "test1" {
  name = var.subnet1
  # count                = 2
  # name                 = var.azurerm_subnet[count.index]
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = var.address_prefix_subnet1
  # address_prefixes = var.address_prefixes[count.index]
}

resource "azurerm_subnet" "test2" {
  name                 = var.subnet2
  resource_group_name  = azurerm_resource_group.test.name
  virtual_network_name = azurerm_virtual_network.test.name
  address_prefixes     = var.address_prefix_subnet2
}

# resource "azurerm_subnet" "test3" {
#   name                 = var.subnet3
#   resource_group_name  = azurerm_resource_group.test.name
#   virtual_network_name = azurerm_virtual_network.test.name
#   address_prefixes     = var.address_prefix_subnet3
# }
