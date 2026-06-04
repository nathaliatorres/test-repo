output "compute_network_self_link" {
  description = "The URI of the VPC network"
  value       = module.compute_network.self_link
}

output "compute_network_name" {
  description = "The name of the VPC network"
  value       = module.compute_network.name
}

output "compute_subnetwork_self_link" {
  description = "The URI of the subnetwork"
  value       = module.compute_subnetwork.self_link
}

output "compute_subnetwork_name" {
  description = "The name of the subnetwork"
  value       = module.compute_subnetwork.name
}

output "compute_firewall_self_link" {
  description = "The URI of the firewall rule"
  value       = module.compute_firewall.self_link
}

output "compute_firewall_name" {
  description = "The name of the firewall rule"
  value       = module.compute_firewall.name
}