output "self_link" {
  description = "The self_link of the disk"
  value       = google_compute_disk.this.self_link
}

output "id" {
  description = "The ID of the disk"
  value       = google_compute_disk.this.id
}