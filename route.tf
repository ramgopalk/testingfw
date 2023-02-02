resource "azurerm_route_table" "example" {
  name                = var.azurerm_route_table
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name

  route {
    name                   = "example"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "None"
    # next_hop_in_ip_address = azurerm_network_interface.test.private_ip_address
  }
}

resource "azurerm_subnet_route_table_association" "example" {
  subnet_id      = azurerm_subnet.test2.id
  route_table_id = azurerm_route_table.example.id
}