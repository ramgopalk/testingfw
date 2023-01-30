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

# Fortigate_vm Config Details
variable "vmname" {
  type    = list(string)
  default = ["fgt_activevm_a", "fgt_activevm_b"]
}
variable "license_type" {
  default = "payg"
}
variable "publisher" {
  type    = string
  default = "fortinet"
}
variable "fgtoffer" {
  type    = string
  default = "fortinet_fortigate-vm_v5"
}
variable "fgtsku" {
  type    = string
  default = "fortinet_fg-vm_payg_2022"
}
variable "fgtversion" {
  type    = string
  default = "7.2.2"
}
variable "vm_size" {
  type    = string
  default = "Standard_F4"
}
variable "admin_username" {
  type    = string
  default = "azureadmin"
}
variable "admin_password" {
  type    = string
  default = "Fortinet@123#"
}
# VNET Config Details
variable "azurerm_virtual_network" {
  type    = string
}
# variable "azurerm_subnet" {
#   type    = string
#   default = [ "value" ]
# }

# azurerm_network_interface Details
variable "nicnames" {
  type    = list(string)
  default = ["fgtvm-a_nic1", "fgtvm-a_nic2","fgtvm-b_nic1","fgtvm-b_nic2"]
}
# Resource Group Details
variable "azurerm_resource_group" {
  type    = string
}
variable "location" {
  type    = string
}
# Public ip Connf
variable "azurerm_public_ip" {
  type    = string
  default = "publicip_extlb"
}
# Route table Details
variable "azurerm_route_table" {
  type    = string
  default = "internal_route"
}

# variable "azurerm_subnet" {
#   type    = list(string)
#   default = ["external", "internal"]
# }
# variable "address_prefixes" {
#   type    = list(string)
#   default = ["10.0.2.0/24", "10.0.3.0/24"]
# }


# variable "loadbalancer_id" {
#   type    = list(string)
#   default = ["external_lb", "internal_lb"]
# }




# variable "vmname" {
#   type    = list(string)
#   default = ["fgt_activevm_a", "fgt_activevm_b"]

# }
# variable "instance_type" {
#   description = "azurerm_lb"
#   type        = string
#   test1       = "external_lb.id"
#   test2       = "internal_lb.id"
# }



// BYOL sku: fortinet_fg-vm
// PAYG sku: fortinet_fg-vm_payg_20190624
