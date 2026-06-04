output "instance_id" {
  description = "The server-assigned unique identifier of the instance"
  value       = google_compute_instance.this.instance_id
}

output "self_link" {
  description = "The self link of the compute instance"
  value       = google_compute_instance.this.self_link
}