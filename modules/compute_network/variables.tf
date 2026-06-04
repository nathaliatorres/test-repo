variable "name" {
  description = "Name of the VPC network"
  type        = string
}

variable "auto_create_subnetworks" {
  description = "Whether to auto-create subnetworks"
  type        = bool
}

variable "routing_mode" {
  description = "Network-wide routing mode (REGIONAL or GLOBAL)"
  type        = string
}