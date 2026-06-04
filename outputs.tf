output "compute_disk_self_link" {
  description = "Self link of the compute disk"
  value       = module.compute_disk.self_link
}

output "compute_subnetwork_self_link" {
  description = "Self link of the compute subnetwork"
  value       = module.compute_subnetwork.self_link
}

output "compute_instance_self_link" {
  description = "Self link of the compute instance"
  value       = module.compute_instance.self_link
}

output "compute_instance_id" {
  description = "Instance ID of the compute instance"
  value       = module.compute_instance.instance_id
}