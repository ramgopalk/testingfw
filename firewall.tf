# provider "fortios" {
#   hostname = "192.168.52.177"
#   token    = "jn3t3Nw7qckQzt955Htkfj5hwQ6jdb"
#   insecure = "true"
# }


# resource "fortios_firewall_policy" "trname" {
#   action             = "accept"
#   logtraffic         = "utm"
#   name               = "policys1"
#   policyid           = 1
#   schedule           = "always"
#   wanopt             = "disable"
#   wanopt_detection   = "active"
#   wanopt_passive_opt = "default"
#   wccp               = "disable"
#   webcache           = "disable"
#   webcache_https     = "disable"
#   wsso               = "enable"

#   dstaddr {
#     name = "all"
#   }

#   dstintf {
#     name = "port4"
#   }

#   service {
#     name = "HTTP"
#   }

#   srcaddr {
#     name = "all"
#   }

#   srcintf {
#     name = "port3"
#   }
# }

# resource "fortios_firewall_policy" "myrule" {
#   action                      = "accept"
#   anti_replay                 = "enable"
#   auth_path                   = "disable"
#   auto_asic_offload           = "enable"
#   av_profile                  = "wifi-default"
#   inspection_mode             = "flow"
#   internet_service            = "enable"
#   ips_sensor                  = "protect_email_server"
#   logtraffic                  = "utm"
#   name                        = "rule1"
#   policyid                    = 2
#   schedule                    = "always"
#   ssl_ssh_profile             = "certificate-inspection"
#   status                      = "enable"
#   utm_status                  = "enable"

#   dstintf {
#       name = "port1"
#   }

#   internet_service_name {
#       name = "Azure"
#   }

#   internet_service_name {
#       name = "GitHub-GitHub"
#   }

#   srcaddr {
#       name = "FABRIC_DEVICE"  
#   }

#   srcintf {
#       name = "port2"
#   }
# }