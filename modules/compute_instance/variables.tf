variable "name" {
  description = "Name of the compute instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the instance"
  type        = string
}

variable "zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "can_ip_forward" {
  description = "Whether to allow sending/receiving packets with non-matching source or destination IPs"
  type        = bool
}

variable "deletion_protection" {
  description = "Whether deletion protection is enabled on this instance"
  type        = bool
}

variable "tags" {
  description = "Network tags to attach to the instance"
  type        = list(string)
}

variable "labels" {
  description = "Labels to assign to the instance"
  type        = map(string)
}

variable "metadata" {
  description = "Metadata key/value pairs for the instance"
  type        = map(string)
}

variable "boot_disk_source" {
  description = "The self_link of the boot disk to attach"
  type        = string
}

variable "subnetwork" {
  description = "The self_link or name of the subnetwork for the network interface"
  type        = string
}

variable "service_account_email" {
  description = "The service account email to attach to the instance"
  type        = string
}

variable "service_account_scopes" {
  description = "The list of service account scopes"
  type        = list(string)
}

variable "scheduling_automatic_restart" {
  description = "Whether the instance should be restarted if terminated by Compute Engine"
  type        = bool
}

variable "scheduling_on_host_maintenance" {
  description = "Maintenance behavior for the instance (MIGRATE or TERMINATE)"
  type        = string
}

variable "scheduling_provisioning_model" {
  description = "The provisioning model for the instance (STANDARD or SPOT)"
  type        = string
}

variable "enable_secure_boot" {
  description = "Whether Secure Boot is enabled on the shielded instance"
  type        = bool
}

variable "enable_vtpm" {
  description = "Whether vTPM is enabled on the shielded instance"
  type        = bool
}

variable "enable_integrity_monitoring" {
  description = "Whether integrity monitoring is enabled on the shielded instance"
  type        = bool
}