
//public ip

resource "azurerm_public_ip" "test" {
  name                = var.azurerm_public_ip
  resource_group_name = azurerm_resource_group.test.name
  location            = azurerm_resource_group.test.location
  allocation_method   = "Static"
}

# resource "azurerm_public_ip_prefix" "example" {
#   name                = "TestPublicIpPrefix1"
#   location            = var.location
#   resource_group_name = var.resourcegroup

#   prefix_length = 31
# }
