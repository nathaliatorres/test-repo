variable "project" {
  type        = string
  description = "The GCP project ID"
}

variable "region" {
  type        = string
  description = "The GCP region for resources"
}

variable "network_name" {
  type        = string
  description = "Name of the VPC network"
}

variable "network_auto_create_subnetworks" {
  type        = bool
  description = "Whether to auto-create subnetworks in the VPC network"
}

variable "network_routing_mode" {
  type        = string
  description = "Network-wide routing mode (REGIONAL or GLOBAL)"
}

variable "subnetwork_name" {
  type        = string
  description = "Name of the subnetwork"
}

variable "subnetwork_ip_cidr_range" {
  type        = string
  description = "The IP CIDR range for the subnetwork"
}

variable "subnetwork_private_ip_google_access" {
  type        = bool
  description = "Whether VMs without external IPs can access Google APIs via Private Google Access"
}

variable "subnetwork_purpose" {
  type        = string
  description = "The purpose of the subnetwork"
}