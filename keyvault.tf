# # # provider "azurerm" {
# # #   features {
# # key_vault {
# #   purge_soft_delete_on_destroy    = true
# #   recover_soft_deleted_key_vaults = true
# # }
# # #   }
# # # }

# data "azurerm_client_config" "current" {}


# resource "azurerm_key_vault" "keyvault" {
#   name                        = var.keyvault
#   location                    = azurerm_resource_group.test.location
#   resource_group_name         = azurerm_resource_group.test.name
#   enabled_for_disk_encryption = true
#   tenant_id                   = var.tenant_id
#   soft_delete_retention_days  = 7
#   purge_protection_enabled    = false

#   sku_name = "standard"

#   access_policy {
#     tenant_id = var.tenant_id
#     object_id = var.object_id

#     key_permissions = [
#       "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", 
#     ]

#     secret_permissions = [
#       "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", 
#     ]

#     storage_permissions = [
#       "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", 
#     ]
#   }
# }

# #Create KeyVault VM password
# resource "random_password" "vmpassword" {
#   length  = 20
#   special = true
# }
# #Create Key Vault Secret
# resource "azurerm_key_vault_secret" "vmpassword" {
#   name         = "vmpassword"
#   value        = random_password.vmpassword.result
#   key_vault_id = azurerm_key_vault.keyvault.id
#   depends_on   = [azurerm_key_vault.keyvault]
# }

