variable "name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group for the virtual machine"
}

variable "location" {
  type        = string
  description = "Azure region for the virtual machine"
}

variable "vm_size" {
  type        = string
  description = "Size/SKU of the virtual machine"
}

variable "network_interface_ids" {
  type        = list(string)
  description = "List of network interface IDs to attach to the VM"
}

variable "identity_type" {
  type        = string
  description = "Type of managed identity for the VM"
}

variable "computer_name" {
  type        = string
  description = "Computer name of the virtual machine"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the virtual machine"
}

variable "image_publisher" {
  type        = string
  description = "Publisher of the VM image"
}

variable "image_offer" {
  type        = string
  description = "Offer of the VM image"
}

variable "image_sku" {
  type        = string
  description = "SKU of the VM image"
}

variable "image_version" {
  type        = string
  description = "Version of the VM image"
}

variable "os_disk_name" {
  type        = string
  description = "Name of the OS disk"
}

variable "os_disk_create_option" {
  type        = string
  description = "Create option for the OS disk"
}

variable "os_disk_caching" {
  type        = string
  description = "Caching setting for the OS disk"
}

variable "os_type" {
  type        = string
  description = "OS type for the OS disk"
}

variable "os_disk_managed_disk_type" {
  type        = string
  description = "Managed disk type for the OS disk"
}

variable "boot_diagnostics_enabled" {
  type        = bool
  description = "Whether boot diagnostics is enabled"
}

variable "boot_diagnostics_storage_uri" {
  type        = string
  description = "Storage URI for boot diagnostics"
}

variable "tags" {
  type        = map(string)
  description = "Tags to assign to the virtual machine"
}