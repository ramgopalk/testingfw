terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname     = "A.B.C.D"
  token        = "secretscrambledtoken"
  insecure     = "true"
}

 
resource "fortios_firewall_address" "source" {
  associated_interface = "port1"
  end_ip     = "255.255.255.0"
  name       = "source"
  start_ip   = "22.1.1.0"
  subnet     = "22.1.1.0 255.255.255.0"
  type       = "ipmask"
  visibility = "enable"
}
 
 
resource "fortios_firewall_address" "dest" {
  associated_interface = "port1"
  end_ip     = "255.255.255.0"
  name       = "destination"
  start_ip   = "23.1.1.0"
  subnet     = "23.1.1.0 255.255.255.0"
  type       = "ipmask"
  visibility = "enable"
}
 
 
resource "fortios_firewallservice_custom" "service" {
  app_service_type    = "disable"
  category            = "General"
  check_reset_range   = "default"
  color               = 0
  helper              = "auto"
  iprange             = "0.0.0.0"
  name                = "customService"
  protocol            = "TCP/UDP/SCTP"
  protocol_number     = 6
  proxy               = "disable"
  tcp_halfclose_timer = 0
  tcp_halfopen_timer  = 0
  tcp_portrange       = "223-332"
  tcp_timewait_timer  = 0
  udp_idle_timer      = 0
  visibility          = "enable"
}
 
resource "fortios_firewall_policy" "fwpolicy" {
  action             = "deny"
  logtraffic         = "utm"
  name               = "firewallpolicy"
  policyid           = 1
  schedule           = "always"
  wanopt             = "disable"
  wanopt_detection   = "active"
  wanopt_passive_opt = "default"
  wccp               = "disable"
  webcache           = "disable"
  webcache_https     = "disable"
  wsso               = "enable"
 
  dstaddr {
    name = fortios_firewall_address.dest.name
  }
 
  dstintf {
    name = "port1"
  }
 
  service {
    name = fortios_firewallservice_custom.service.name
  }
 
  srcaddr {
    name = fortios_firewall_address.source.name
  }
 
  srcintf {
    name = "port1"
  }
}