output "self_link" {
  description = "The self_link of the compute instance"
  value       = google_compute_instance.this.self_link
}

output "id" {
  description = "The ID of the compute instance"
  value       = google_compute_instance.this.id
}