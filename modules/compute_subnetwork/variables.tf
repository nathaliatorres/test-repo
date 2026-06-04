variable "name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "network" {
  description = "Self-link of the VPC network this subnet belongs to"
  type        = string
}

variable "ip_cidr_range" {
  description = "IP CIDR range for the subnetwork"
  type        = string
}

variable "region" {
  description = "GCP region for the subnetwork"
  type        = string
}

variable "private_ip_google_access" {
  description = "Whether VMs without external IPs can access Google APIs"
  type        = bool
}

variable "purpose" {
  description = "Purpose of the subnetwork"
  type        = string
}