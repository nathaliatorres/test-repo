variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region for this stack"
  type        = string
}

variable "compute_network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "compute_network_auto_create_subnetworks" {
  description = "Whether to auto-create subnetworks"
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
  description = "The primary IP CIDR range for the subnetwork"
  type        = string
}

variable "compute_subnetwork_region" {
  description = "The GCP region for the subnetwork"
  type        = string
}

variable "compute_subnetwork_private_ip_google_access" {
  description = "Whether VMs without external IPs can access Google APIs via Private Google Access"
  type        = bool
}

variable "compute_subnetwork_purpose" {
  description = "The purpose of the subnetwork"
  type        = string
}

variable "compute_subnetwork_secondary_ip_range" {
  description = "Secondary IP ranges for the subnetwork"
  type = list(object({
    range_name    = string
    ip_cidr_range = string
  }))
  default = []
}