module "compute_network" {
  source                  = "./modules/compute_network"
  name                    = var.compute_network_name
  auto_create_subnetworks = var.compute_network_auto_create_subnetworks
  routing_mode            = var.compute_network_routing_mode
}

module "compute_subnetwork" {
  source                   = "./modules/compute_subnetwork"
  name                     = var.compute_subnetwork_name
  network                  = module.compute_network.self_link
  ip_cidr_range            = var.compute_subnetwork_ip_cidr_range
  region                   = var.compute_subnetwork_region
  private_ip_google_access = var.compute_subnetwork_private_ip_google_access
  purpose                  = var.compute_subnetwork_purpose
}

module "compute_firewall" {
  source         = "./modules/compute_firewall"
  name           = var.compute_firewall_name
  network        = module.compute_network.self_link
  direction      = var.compute_firewall_direction
  disabled       = var.compute_firewall_disabled
  priority       = var.compute_firewall_priority
  source_ranges  = var.compute_firewall_source_ranges
  target_tags    = var.compute_firewall_target_tags
  allow_protocol = var.compute_firewall_allow_protocol
  allow_ports    = var.compute_firewall_allow_ports
}