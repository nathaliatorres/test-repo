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
  secondary_ip_range       = var.compute_subnetwork_secondary_ip_range
}