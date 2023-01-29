resource "azurerm_network_interface" "test" {
  count               = 4
  name                = var.nicnames[count.index]
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
#   virtual_machine_id  = [element(azurerm_virtual_machine.test.*.id, count.index)]

  ip_configuration {
    name      = "testConfiguration"
    subnet_id = azurerm_subnet.test1.id
    # subnet_id                     = [azurerm_subnet.external.id, azurerm_subnet.internal.id]
    private_ip_address_allocation = "dynamic"
  }
}

# resource "azurerm_network_interface" "test2" {
#   count               = 2
#   name                = "acctni22${count.index}"
#   location            = azurerm_resource_group.test.location
#   resource_group_name = azurerm_resource_group.test.name

#   ip_configuration {
#     name = "testConfiguration"
#     subnet_id                     = azurerm_subnet.test2.id
#     # subnet_id                     = [azurerm_subnet.external.id, azurerm_subnet.internal.id]
#     private_ip_address_allocation = "dynamic"
#   }
# }
