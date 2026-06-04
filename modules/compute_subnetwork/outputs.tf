output "subnetwork_self_link" {
  description = "The self_link of the subnetwork"
  value       = google_compute_subnetwork.this.self_link
}

output "subnetwork_name" {
  description = "The name of the subnetwork"
  value       = google_compute_subnetwork.this.name
}