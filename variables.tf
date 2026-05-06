variable "region" {
  type        = string
  description = "Azure region for all resources"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP resource"
}

variable "public_ip_allocation_method" {
  type        = string
  description = "Allocation method for the public IP (Static or Dynamic)"
}

variable "public_ip_sku" {
  type        = string
  description = "SKU of the public IP (Basic, Standard, StandardV2)"
}

variable "network_interface_name" {
  type        = string
  description = "Name of the network interface"
}

variable "nic_accelerated_networking_enabled" {
  type        = bool
  description = "Whether accelerated networking is enabled on the NIC"
}

variable "nic_ip_forwarding_enabled" {
  type        = bool
  description = "Whether IP forwarding is enabled on the NIC"
}

variable "nic_ip_configuration_name" {
  type        = string
  description = "Name of the NIC IP configuration"
}

variable "nic_private_ip_address_allocation" {
  type        = string
  description = "Private IP allocation method for the NIC (Dynamic or Static)"
}

variable "nic_private_ip_address" {
  type        = string
  description = "Static private IP address for the NIC"
}

variable "nic_private_ip_address_version" {
  type        = string
  description = "IP version for the NIC private IP (IPv4 or IPv6)"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet for the NIC"
}

variable "nic_ip_configuration_primary" {
  type        = bool
  description = "Whether the NIC IP configuration is primary"
}

variable "nic_tags" {
  type        = map(string)
  description = "Tags to assign to the network interface"
}

variable "managed_disk_name" {
  type        = string
  description = "Name of the managed disk"
}

variable "managed_disk_storage_account_type" {
  type        = string
  description = "Storage account type for the managed disk"
}

variable "managed_disk_create_option" {
  type        = string
  description = "Creation method for the managed disk"
}

variable "managed_disk_size_gb" {
  type        = number
  description = "Size of the managed disk in GB"
}

variable "managed_disk_os_type" {
  type        = string
  description = "OS type for the managed disk (Windows or Linux)"
}

variable "managed_disk_hyper_v_generation" {
  type        = string
  description = "Hyper-V generation of the managed disk"
}

variable "managed_disk_image_reference_id" {
  type        = string
  description = "Image reference ID for the managed disk"
}

variable "managed_disk_tags" {
  type        = map(string)
  description = "Tags to assign to the managed disk"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "vm_size" {
  type        = string
  description = "Size/SKU of the virtual machine"
}

variable "vm_identity_type" {
  type        = string
  description = "Type of managed identity for the VM"
}

variable "vm_computer_name" {
  type        = string
  description = "Computer name of the virtual machine"
}

variable "vm_admin_username" {
  type        = string
  description = "Admin username for the virtual machine"
}

variable "vm_image_publisher" {
  type        = string
  description = "Publisher of the VM image"
}

variable "vm_image_offer" {
  type        = string
  description = "Offer of the VM image"
}

variable "vm_image_sku" {
  type        = string
  description = "SKU of the VM image"
}

variable "vm_image_version" {
  type        = string
  description = "Version of the VM image"
}

variable "vm_os_disk_name" {
  type        = string
  description = "Name of the OS disk"
}

variable "vm_os_disk_create_option" {
  type        = string
  description = "Create option for the OS disk"
}

variable "vm_os_disk_caching" {
  type        = string
  description = "Caching setting for the OS disk"
}

variable "vm_os_type" {
  type        = string
  description = "OS type for the OS disk"
}

variable "vm_os_disk_managed_disk_type" {
  type        = string
  description = "Managed disk type for the OS disk"
}

variable "vm_boot_diagnostics_enabled" {
  type        = bool
  description = "Whether boot diagnostics is enabled"
}

variable "vm_boot_diagnostics_storage_uri" {
  type        = string
  description = "Storage URI for boot diagnostics"
}

variable "vm_tags" {
  type        = map(string)
  description = "Tags to assign to the virtual machine"
}