variable "name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "network" {
  description = "The self_link of the network this subnet belongs to"
  type        = string
}

variable "ip_cidr_range" {
  description = "The primary IP CIDR range for the subnetwork"
  type        = string
}

variable "region" {
  description = "The GCP region for this subnetwork"
  type        = string
}

variable "private_ip_google_access" {
  description = "Whether VMs without external IPs can access Google APIs via Private Google Access"
  type        = bool
}

variable "purpose" {
  description = "The purpose of the subnetwork"
  type        = string
}

variable "secondary_ip_range" {
  description = "Secondary IP ranges for the subnetwork"
  type = list(object({
    range_name    = string
    ip_cidr_range = string
  }))
  default = []
}