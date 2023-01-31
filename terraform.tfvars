subscription_id = "2c27975e-ce4f-421e-82ff-9e5080dc09c5"
client_id       = "754f5cec-f1a0-4dc0-aa3c-b4cb7a37cd35"
tenant_id       = "421b3bef-502a-4631-9b9b-2cebf650e2fb"
client_secret   = "DJc8Q~KtV~F-ZuvumbFXkrOQXJ_DPzqYiQMgla4Y"
object_id       = "b8dbe7ed-8410-4646-9339-544a6015d38f"
//======================== Resource group details =====================//
azurerm_resource_group = "fgt_rg"
location               = "westus2"

//=================== VM Details ====================================//
vmname       = ["fgt_activevm_a", "fgt_activevm_b"]
license_type = "payg"
publisher    = "fortinet"
fgtoffer     = "fortinet_fortigate-vm_v5"
fgtsku       = "fortinet_fg-vm_payg_2022"
fgtversion   = "7.2.2"
vm_size      = "Standard_F4"
hostname       = "ram"
admin_username = "azureadmin"
# admin_password = "Fortinet@123#"

//=================== VNET Details =====================//
azurerm_virtual_network = "fgt_vnet"
vnetaddress_space       = ["10.1.0.0/16"]

//==================== Subnet Details ===================//
subnet1                = "public_subnet"
address_prefix_subnet1 = ["10.1.0.0/24"]
subnet2                = "private_subnet"
address_prefix_subnet2 = ["10.1.1.0/24"]
subnet3                = "protected_subnet"
address_prefix_subnet3 = ["10.1.1.1/32"]

//==================== network_interface Details ===================//
nicnames = ["fgtvm-a_nic1", "fgtvm-a_nic2", "fgtvm-b_nic1", "fgtvm-b_nic2"]

//==================== Load balancer Details ===================//
loadbalancer1 = "external_lb"
loadbalancer2 = "internal_lb"

//=================== Keyvault ====================//
keyvault = "fgt-keyvault"

//====================== Publicip & Routetable =============//
azurerm_route_table         = "internal-route"
azurerm_public_ip           = "publicip-extlb"
network_security_group_name = "Public-NSG"

//==================== Storage account ================//
storageaccount           = "fgtstorage"
account_replication_type = "LRS"
account_tier             = "Standard"
containername            = "fgt-container"
container_access_type    = "private"
