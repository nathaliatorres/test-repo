module "compute_network" {
  source                  = "./modules/compute_network"
  name                    = var.network_name
  auto_create_subnetworks = var.network_auto_create_subnetworks
  routing_mode            = var.network_routing_mode
}

module "compute_subnetwork" {
  source                   = "./modules/compute_subnetwork"
  name                     = var.subnetwork_name
  network                  = module.compute_network.network_self_link
  ip_cidr_range            = var.subnetwork_ip_cidr_range
  region                   = var.region
  private_ip_google_access = var.subnetwork_private_ip_google_access
  purpose                  = var.subnetwork_purpose
}