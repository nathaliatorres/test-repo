project                                     = "stackguardian-nonprod"
region                                      = "europe-west1"
compute_network_name                        = "sg-test-clara"
compute_network_auto_create_subnetworks     = false
compute_network_routing_mode                = "GLOBAL"
compute_subnetwork_name                     = "subnet-01-clara"
compute_subnetwork_ip_cidr_range            = "10.10.10.0/24"
compute_subnetwork_region                   = "europe-west1"
compute_subnetwork_private_ip_google_access = true
compute_subnetwork_purpose                  = "PRIVATE"
compute_subnetwork_secondary_ip_range = [
  {
    range_name    = "range-1"
    ip_cidr_range = "10.0.1.0/24"
  },
  {
    range_name    = "range-2"
    ip_cidr_range = "10.0.2.0/24"
  }
]