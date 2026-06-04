output "id" {
  description = "The ID of the subnetwork"
  value       = google_compute_subnetwork.this.id
}

output "self_link" {
  description = "The URI of the subnetwork"
  value       = google_compute_subnetwork.this.self_link
}