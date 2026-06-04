resource "google_compute_subnetwork" "this" {
  name                     = var.name
  network                  = var.network
  ip_cidr_range            = var.ip_cidr_range
  private_ip_google_access = var.private_ip_google_access
  purpose                  = var.purpose
  region                   = var.region
}