
resource "azurerm_lb" "test1" {
  name                = var.loadbalancer1
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name

  frontend_ip_configuration {
    name                 = "publicipadress"
    public_ip_address_id = azurerm_public_ip.test.id
  }
}

resource "azurerm_lb_backend_address_pool" "test1" {
  loadbalancer_id = azurerm_lb.test1.id
  name            = "BackEndAddressPool"
}


# resource "azurerm_lb_probe" "test1" {
#   loadbalancer_id = azurerm_lb.test1.id
#   name            = "ssh-running-probe"
#   port            = 22
# }

# resource "azurerm_lb_rule" "test1" {
#   loadbalancer_id                = azurerm_lb.test1.id
#   name                           = "LBRule"
#   protocol                       = "Tcp"
#   frontend_port                  = 3389
#   backend_port                   = 3389
#   # frontend_ip_configuration_name = "Publicipadress"
# }

# resource "azurerm_lb_nat_rule" "test1" {
#   resource_group_name            = azurerm_resource_group.test.name
#   loadbalancer_id                = azurerm_lb.test1.id
#   name                           = "RDPAccess"
#   protocol                       = "Tcp"
#   frontend_port_start            = 3000
#   frontend_port_end              = 3389
#   backend_port                   = 3389
#   backend_address_pool_id        = azurerm_lb_backend_address_pool.test1.id
#   # frontend_ip_configuration_name = "Publicipadress"
# }


resource "azurerm_lb" "test2" {
  name                = var.loadbalancer2
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name


  frontend_ip_configuration {
    name      = "privateIPAddress"
    subnet_id = azurerm_subnet.test2.id
    # public_ip_address_id = azurerm_public_ip.test.id
  }
}

resource "azurerm_lb_backend_address_pool" "test2" {
  loadbalancer_id = azurerm_lb.test2.id
  name            = "BackEndAddressPool"
}
