output "self_link" {
  description = "The self_link of the subnetwork"
  value       = google_compute_subnetwork.this.self_link
}

output "id" {
  description = "The ID of the subnetwork"
  value       = google_compute_subnetwork.this.id
}