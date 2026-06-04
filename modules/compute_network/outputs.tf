output "self_link" {
  description = "The URI of the VPC network"
  value       = google_compute_network.this.self_link
}

output "id" {
  description = "The ID of the VPC network"
  value       = google_compute_network.this.id
}