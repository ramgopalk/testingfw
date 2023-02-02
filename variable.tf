// Azure configuration
variable "subscription_id" {
  type = string
}
variable "client_id" {
  type = string
}
variable "client_secret" {
  type = string
}
variable "tenant_id" {
  type = string
}
variable "object_id" {
  type = string
  # default = "b8dbe7ed-8410-4646-9339-544a6015d38f"
}
# Fortigate_vm Config Details
variable "vmname" {}
variable "license_type" {}
variable "publisher" {}
variable "fgtoffer" {}
variable "fgtsku" {}
variable "fgtversion" {}
variable "vm_size" {}
variable "hostname" {}
variable "admin_username" {}
variable "admin_password" {
}

# VNET Config Details
variable "azurerm_virtual_network" {
  type = string
}
variable "vnetaddress_space" {}
#Subnet
variable "subnet1" {}
variable "subnet2" {}
variable "subnet3" {}

variable "address_prefix_subnet1" {}
variable "address_prefix_subnet2" {}
variable "address_prefix_subnet3" {}

# azurerm_network_interface Details
variable "nicnames" {
  type = list(string)
}
# Resource Group Details
variable "azurerm_resource_group" {}
#   type    = string
# }
variable "location" {}
#   type    = string
# }
# Public ip Connf
variable "azurerm_public_ip" {}
# Route table Details
variable "azurerm_route_table" {}
#loadbalancer Details
variable "loadbalancer1" {}
variable "loadbalancer2" {}
#keyvault
variable "keyvault" {}
#Storage account
variable "storageaccount" {}
variable "account_replication_type" {}
variable "account_tier" {}
variable "containername" {}
variable "container_access_type" {}
variable "network_security_group_name" {}
variable "frontend_ip_configuration" {
}