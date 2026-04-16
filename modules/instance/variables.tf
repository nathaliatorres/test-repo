variable "ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name to use for the instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID in which to launch the instance"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to associate with the instance"
  type        = string
}

variable "source_dest_check" {
  description = "Whether source/destination checking is enabled"
  type        = bool
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS-optimized"
  type        = bool
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "tenancy" {
  description = "Tenancy of the instance (default, dedicated, host)"
  type        = string
}

variable "capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "metadata_http_endpoint" {
  description = "Whether the metadata service HTTP endpoint is enabled"
  type        = string
}

variable "metadata_http_protocol_ipv6" {
  description = "Whether the IPv6 metadata endpoint is enabled"
  type        = string
}

variable "metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "metadata_http_tokens" {
  description = "Whether IMDSv2 tokens are required (optional or required)"
  type        = string
}

variable "metadata_instance_metadata_tags" {
  description = "Whether instance metadata tags access is enabled"
  type        = string
}

variable "enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "cpu_core_count" {
  description = "Number of CPU cores"
  type        = number
}

variable "cpu_threads_per_core" {
  description = "Number of threads per CPU core"
  type        = number
}

variable "tags" {
  description = "Tags to assign to the instance"
  type        = map(string)
  default     = {}
}