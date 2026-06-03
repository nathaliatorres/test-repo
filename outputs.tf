output "instance_self_link" {
  description = "The self_link of the compute instance"
  value       = module.compute_instance.self_link
}

output "instance_id" {
  description = "The ID of the compute instance"
  value       = module.compute_instance.id
}

output "disk_self_link" {
  description = "The self_link of the boot disk"
  value       = module.compute_disk.self_link
}

output "subnetwork_self_link" {
  description = "The self_link of the subnetwork"
  value       = module.compute_subnetwork.self_link
}