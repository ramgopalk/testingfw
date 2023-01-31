
resource "azurerm_lb" "test1" {
  #   count = 2
  # name  = var.azurerm_lb[count.index]
  name                = var.loadbalancer1
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  # id                  = var.azurerm_lb[count.index]
  # tags = {
  # "id" = "azurerm_lb-${var.azurerm_lb[count.index]}"
  # }


  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.test.id
  }
}

resource "azurerm_lb_backend_address_pool" "test1" {
  loadbalancer_id = azurerm_lb.test1.id
  name            = "BackEndAddressPool"
}


resource "azurerm_lb" "test2" {
  name                = var.loadbalancer2
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name


  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.test.id
  }
}

resource "azurerm_lb_backend_address_pool" "test2" {
  loadbalancer_id = azurerm_lb.test2.id
  name            = "BackEndAddressPool"
}
