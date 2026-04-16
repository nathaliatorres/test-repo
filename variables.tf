variable "region" {
  description = "AWS region where resources are managed"
  type        = string
}

variable "key_pair_key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "key_pair_public_key" {
  description = "Public key material for the key pair"
  type        = string
  sensitive   = true
}

variable "shared_security_group_id" {
  description = "Security group ID shared between the instance and network interface"
  type        = string
}

variable "network_interface_subnet_id" {
  description = "Subnet ID in which the ENI is created"
  type        = string
}

variable "network_interface_private_ip_address" {
  description = "Primary private IP address assigned to the ENI"
  type        = string
}

variable "network_interface_source_dest_check" {
  description = "Whether source/destination checking is enabled on the ENI"
  type        = bool
}

variable "network_interface_device_index" {
  description = "Device index for the ENI attachment"
  type        = number
}

variable "instance_ami_id" {
  description = "AMI ID to use for the instance"
  type        = string
}

variable "instance_instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_availability_zone" {
  description = "Availability zone for the instance"
  type        = string
}

variable "instance_subnet_id" {
  description = "Subnet ID in which to launch the instance"
  type        = string
}

variable "instance_source_dest_check" {
  description = "Whether source/destination checking is enabled on the instance"
  type        = bool
}

variable "instance_ebs_optimized" {
  description = "Whether the instance is EBS-optimized"
  type        = bool
}

variable "instance_monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "instance_tenancy" {
  description = "Tenancy of the instance (default, dedicated, host)"
  type        = string
}

variable "instance_capacity_reservation_preference" {
  description = "Capacity reservation preference for the instance"
  type        = string
}

variable "instance_metadata_http_endpoint" {
  description = "Whether the metadata service HTTP endpoint is enabled"
  type        = string
}

variable "instance_metadata_http_protocol_ipv6" {
  description = "Whether the IPv6 metadata endpoint is enabled"
  type        = string
}

variable "instance_metadata_http_put_response_hop_limit" {
  description = "HTTP PUT response hop limit for instance metadata requests"
  type        = number
}

variable "instance_metadata_http_tokens" {
  description = "Whether IMDSv2 tokens are required (optional or required)"
  type        = string
}

variable "instance_metadata_instance_metadata_tags" {
  description = "Whether instance metadata tags access is enabled"
  type        = string
}

variable "instance_enclave_options_enabled" {
  description = "Whether Nitro Enclaves are enabled"
  type        = bool
}

variable "instance_cpu_core_count" {
  description = "Number of CPU cores"
  type        = number
}

variable "instance_cpu_threads_per_core" {
  description = "Number of threads per CPU core"
  type        = number
}

variable "instance_tags" {
  description = "Tags to assign to the EC2 instance"
  type        = map(string)
  default     = {}
}