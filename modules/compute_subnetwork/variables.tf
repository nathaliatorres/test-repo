variable "name" {
  type        = string
  description = "Name of the subnetwork"
}

variable "network" {
  type        = string
  description = "The self_link of the network this subnet belongs to"
}

variable "ip_cidr_range" {
  type        = string
  description = "The IP CIDR range for the subnetwork"
}

variable "region" {
  type        = string
  description = "The GCP region for this subnetwork"
}

variable "private_ip_google_access" {
  type        = bool
  description = "Whether VMs without external IPs can access Google APIs via Private Google Access"
}

variable "purpose" {
  type        = string
  description = "The purpose of the subnetwork"
}