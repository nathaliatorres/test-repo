output "network_self_link" {
  description = "The self_link of the VPC network"
  value       = google_compute_network.this.self_link
}

output "network_name" {
  description = "The name of the VPC network"
  value       = google_compute_network.this.name
}