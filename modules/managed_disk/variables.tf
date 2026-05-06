variable "name" {
  type        = string
  description = "Name of the managed disk"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the managed disk"
}

variable "location" {
  type        = string
  description = "Azure region for the managed disk"
}

variable "storage_account_type" {
  type        = string
  description = "Storage account type for the managed disk"
}

variable "create_option" {
  type        = string
  description = "Creation method for the managed disk"
}

variable "disk_size_gb" {
  type        = number
  description = "Size of the managed disk in GB"
}

variable "os_type" {
  type        = string
  description = "OS type for the managed disk (Windows or Linux)"
}

variable "hyper_v_generation" {
  type        = string
  description = "Hyper-V generation of the managed disk"
}

variable "image_reference_id" {
  type        = string
  description = "Image reference ID for the managed disk"
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the managed disk"
}