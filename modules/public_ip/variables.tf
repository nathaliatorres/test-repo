variable "name" {
  type        = string
  description = "Name of the public IP resource"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the public IP"
}

variable "location" {
  type        = string
  description = "Azure region for the public IP"
}

variable "allocation_method" {
  type        = string
  description = "Allocation method for the public IP (Static or Dynamic)"
}

variable "sku" {
  type        = string
  description = "SKU of the public IP (Basic, Standard, StandardV2)"
}