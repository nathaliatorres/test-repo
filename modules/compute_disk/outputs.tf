output "self_link" {
  description = "The self link of the compute disk testing"
  value       = google_compute_disk.this.self_link
}

output "name" {
  description = "The name of the compute disk"
  value       = google_compute_disk.this.name
}