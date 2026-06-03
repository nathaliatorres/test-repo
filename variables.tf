variable "region" {
  description = "The GCP region for the stack"
  type        = string
}

variable "zone" {
  description = "The GCP zone for the stack"
  type        = string
}

variable "subnetwork_name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "subnetwork_network" {
  description = "The network the subnetwork belongs to"
  type        = string
}

variable "subnetwork_ip_cidr_range" {
  description = "The IP CIDR range for the subnetwork"
  type        = string
}

variable "subnetwork_purpose" {
  description = "The purpose of the subnetwork"
  type        = string
}

variable "subnetwork_private_ip_google_access" {
  description = "Whether VMs without external IPs can access Google APIs via Private Google Access"
  type        = bool
}

variable "disk_name" {
  description = "Name of the boot disk"
  type        = string
}

variable "disk_type" {
  description = "The disk type"
  type        = string
}

variable "disk_size" {
  description = "Size of the disk in GB"
  type        = number
}

variable "disk_image" {
  description = "The source image URL to initialize the disk from"
  type        = string
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
}

variable "instance_machine_type" {
  description = "The machine type for the instance"
  type        = string
}

variable "instance_can_ip_forward" {
  description = "Whether to allow sending/receiving packets with non-matching source or destination IPs"
  type        = bool
}

variable "instance_deletion_protection" {
  description = "Whether deletion protection is enabled on this instance"
  type        = bool
}

variable "instance_tags" {
  description = "Network tags to attach to the instance"
  type        = list(string)
}

variable "instance_labels" {
  description = "Labels to assign to the instance"
  type        = map(string)
}

variable "instance_metadata" {
  description = "Metadata key/value pairs for the instance"
  type        = map(string)
}

variable "instance_service_account_email" {
  description = "The service account email to attach to the instance"
  type        = string
}

variable "instance_service_account_scopes" {
  description = "The list of service account scopes"
  type        = list(string)
}

variable "instance_scheduling_automatic_restart" {
  description = "Whether the instance should be restarted if terminated by Compute Engine"
  type        = bool
}

variable "instance_scheduling_on_host_maintenance" {
  description = "Maintenance behavior for the instance (MIGRATE or TERMINATE)"
  type        = string
}

variable "instance_scheduling_provisioning_model" {
  description = "The provisioning model for the instance (STANDARD or SPOT)"
  type        = string
}

variable "instance_enable_secure_boot" {
  description = "Whether Secure Boot is enabled on the shielded instance"
  type        = bool
}

variable "instance_enable_vtpm" {
  description = "Whether vTPM is enabled on the shielded instance"
  type        = bool
}

variable "instance_enable_integrity_monitoring" {
  description = "Whether integrity monitoring is enabled on the shielded instance"
  type        = bool
}