variable "cidr_block" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
}

variable "instance_tenancy" {
  description = "Tenancy option for instances launched into the VPC"
  type        = string
}

variable "assign_generated_ipv6_cidr_block" {
  description = "Whether to request an Amazon-provided IPv6 CIDR block"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to assign to the VPC"
  type        = map(string)
}