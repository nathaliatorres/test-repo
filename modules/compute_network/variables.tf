variable "name" {
  type        = string
  description = "Name of the VPC network"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Whether to auto-create subnetworks"
}

variable "routing_mode" {
  type        = string
  description = "Network-wide routing mode (REGIONAL or GLOBAL)"
}