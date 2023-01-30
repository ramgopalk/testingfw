# resource "azurerm_route_table" "test" {
# #   depends_on          = [azurerm_virtual_machine.fgt_activevm_b]
#   name                = var.azurerm_route_table
#   location            = azurerm_resource_group.test.location
#   resource_group_name = azurerm_resource_group.test.name
# }

# resource "azurerm_route" "default" {
#   name                   = "default"
#   resource_group_name    = azurerm_resource_group.test.name
#   route_table_name       = var.azurerm_route_table
#   address_prefix         = "0.0.0.0/0"
#   next_hop_type          = "VirtualAppliance"
#   next_hop_in_ip_address = azurerm_network_interface.test.*.private_ip_address
# }

# resource "azurerm_subnet_route_table_association" "internalassociate" {
#   depends_on     = [azurerm_route_table.test]
#   subnet_id      = azurerm_subnet.test3.id
#   route_table_id = azurerm_route_table.test.id
# }