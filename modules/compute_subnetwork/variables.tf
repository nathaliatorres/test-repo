variable "name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "network" {
  description = "The network this subnet belongs to (external reference)"
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
  description = "Whether VMs can access Google APIs without external IPs"
  type        = bool
}

variable "purpose" {
  description = "The purpose of the subnetwork"
  type        = string
}