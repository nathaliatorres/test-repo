output "self_link" {
  description = "The URI of the VPC network"
  value       = google_compute_network.this.self_link
}

output "name" {
  description = "The name of the VPC network"
  value       = google_compute_network.this.name
}