resource "google_compute_subnetwork" "this" {
  name                     = var.name
  network                  = var.network
  ip_cidr_range            = var.ip_cidr_range
  region                   = var.region
  private_ip_google_access = var.private_ip_google_access
  purpose                  = var.purpose

  dynamic "secondary_ip_range" {
    for_each = var.secondary_ip_range
    content {
      range_name    = secondary_ip_range.value.range_name
      ip_cidr_range = secondary_ip_range.value.ip_cidr_range
    }
  }
}