variable "name" {
  type        = string
  description = "Name of the network interface"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the network interface"
}

variable "location" {
  type        = string
  description = "Azure region for the network interface"
}

variable "accelerated_networking_enabled" {
  type        = bool
  description = "Whether accelerated networking is enabled"
}

variable "ip_forwarding_enabled" {
  type        = bool
  description = "Whether IP forwarding is enabled"
}

variable "ip_configuration_name" {
  type        = string
  description = "Name of the IP configuration"
}

variable "private_ip_address_allocation" {
  type        = string
  description = "Private IP allocation method (Dynamic or Static)"
}

variable "private_ip_address" {
  type        = string
  description = "Static private IP address"
}

variable "private_ip_address_version" {
  type        = string
  description = "IP version for the private IP (IPv4 or IPv6)"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet for this NIC (external reference)"
}

variable "public_ip_address_id" {
  type        = string
  description = "ID of the public IP to associate with this NIC"
}

variable "ip_configuration_primary" {
  type        = bool
  description = "Whether this is the primary IP configuration"
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the network interface"
}