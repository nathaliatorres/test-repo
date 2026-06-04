output "network_self_link" {
  description = "The self_link of the VPC network"
  value       = module.compute_network.network_self_link
}

output "network_name" {
  description = "The name of the VPC network"
  value       = module.compute_network.network_name
}

output "subnetwork_self_link" {
  description = "The self_link of the subnetwork"
  value       = module.compute_subnetwork.subnetwork_self_link
}

output "subnetwork_name" {
  description = "The name of the subnetwork"
  value       = module.compute_subnetwork.subnetwork_name
}