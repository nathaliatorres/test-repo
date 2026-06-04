variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region for the stack"
  type        = string
}

variable "compute_network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "compute_network_auto_create_subnetworks" {
  description = "Whether to auto-create subnetworks in the VPC network"
  type        = bool
}

variable "compute_network_routing_mode" {
  description = "Network-wide routing mode (REGIONAL or GLOBAL)"
  type        = string
}

variable "compute_subnetwork_name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "compute_subnetwork_ip_cidr_range" {
  description = "IP CIDR range for the subnetwork"
  type        = string
}

variable "compute_subnetwork_region" {
  description = "GCP region for the subnetwork"
  type        = string
}

variable "compute_subnetwork_private_ip_google_access" {
  description = "Whether VMs without external IPs can access Google APIs"
  type        = bool
}

variable "compute_subnetwork_purpose" {
  description = "Purpose of the subnetwork"
  type        = string
}

variable "compute_firewall_name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "compute_firewall_description" {
  description = "Description of the firewall rule"
  type        = string
}

variable "compute_firewall_direction" {
  description = "Direction of traffic (INGRESS or EGRESS)"
  type        = string
}

variable "compute_firewall_disabled" {
  description = "Whether the firewall rule is disabled"
  type        = bool
}

variable "compute_firewall_priority" {
  description = "Priority for the firewall rule"
  type        = number
}

variable "compute_firewall_source_ranges" {
  description = "Source IP CIDR ranges for the firewall rule"
  type        = list(string)
}

variable "compute_firewall_target_tags" {
  description = "Target instance tags for the firewall rule"
  type        = list(string)
}

variable "compute_firewall_allow_protocol" {
  description = "IP protocol for the allow rule"
  type        = string
}

variable "compute_firewall_allow_ports" {
  description = "Ports for the allow rule"
  type        = list(string)
}