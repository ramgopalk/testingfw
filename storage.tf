
resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storageaccount
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
}

# resource "random_id" "randomId" {
#   keepers = {
#     resource_group = azurerm_resource_group.test.name
#   }

#   byte_length = 8
# }

resource "azurerm_storage_container" "container" {
  name                  = var.containername
  storage_account_name  = azurerm_storage_account.storageaccount.name
  container_access_type = var.container_access_type
}
