output "self_link" {
  description = "The self link of the subnetwork"
  value       = google_compute_subnetwork.this.self_link
}

output "name" {
  description = "The name of the subnetwork"
  value       = google_compute_subnetwork.this.name
}