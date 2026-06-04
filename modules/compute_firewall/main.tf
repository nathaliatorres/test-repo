resource "google_compute_firewall" "this" {
  name          = var.name
  network       = var.network
  direction     = var.direction
  disabled      = var.disabled
  priority      = var.priority
  source_ranges = var.source_ranges
  target_tags   = var.target_tags

  allow {
    protocol = var.allow_protocol
    ports    = var.allow_ports
  }
}