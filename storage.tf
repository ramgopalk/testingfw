
resource "azurerm_storage_account" "storageaccount" {
  name                     = "storageaccount1"
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

# resource "random_id" "randomId" {
#   keepers = {
#     resource_group = var.resourcegroup.name
#   }

#   byte_length = 8
# }

resource "azurerm_storage_container" "container" {
  name                  = "mycontainer"
  storage_account_name  = azurerm_storage_account.storageaccount.name
  container_access_type = "private"
}
