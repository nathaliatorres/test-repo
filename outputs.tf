output "compute_network_self_link" {
  description = "The URI of the VPC network"
  value       = module.compute_network.self_link
}

output "compute_network_id" {
  description = "The ID of the VPC network"
  value       = module.compute_network.id
}

output "compute_subnetwork_id" {
  description = "The ID of the subnetwork"
  value       = module.compute_subnetwork.id
}

output "compute_subnetwork_self_link" {
  description = "The URI of the subnetwork"
  value       = module.compute_subnetwork.self_link
}