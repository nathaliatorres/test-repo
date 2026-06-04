output "self_link" {
  description = "The URI of the firewall rule"
  value       = google_compute_firewall.this.self_link
}

output "name" {
  description = "The name of the firewall rule"
  value       = google_compute_firewall.this.name
}