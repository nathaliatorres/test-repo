variable "name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "network" {
  description = "The network this subnet belongs to (self_link or name of google_compute_network)"
  type        = string
}

variable "ip_cidr_range" {
  description = "The IP CIDR range for the subnetwork"
  type        = string
}

variable "region" {
  description = "The GCP region for the subnetwork"
  type        = string
}

variable "purpose" {
  description = "The purpose of the subnetwork"
  type        = string
}

variable "private_ip_google_access" {
  description = "Whether VMs without external IPs can access Google APIs via Private Google Access"
  type        = bool
}