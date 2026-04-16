variable "subnet_id" {
  description = "Subnet ID in which the ENI is created"
  type        = string
}

variable "private_ip_address" {
  description = "Primary private IP address assigned to the ENI"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID assigned to the ENI"
  type        = string
}

variable "source_dest_check" {
  description = "Whether source/destination checking is enabled on the ENI"
  type        = bool
}

variable "attached_instance_id" {
  description = "ID of the EC2 instance the ENI is attached to"
  type        = string
}

variable "device_index" {
  description = "Device index for the ENI attachment"
  type        = number
}