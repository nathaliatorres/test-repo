variable "name" {
  description = "Name of the compute instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for the instance"
  type        = string
}

variable "zone" {
  description = "Zone where the instance is created"
  type        = string
}

variable "can_ip_forward" {
  description = "Whether to allow IP forwarding"
  type        = bool
}

variable "deletion_protection" {
  description = "Whether deletion protection is enabled"
  type        = bool
}

variable "desired_status" {
  description = "Desired status of the instance (RUNNING, SUSPENDED, or TERMINATED)"
  type        = string
}

variable "boot_disk_source" {
  description = "Self link or name of the boot disk"
  type        = string
}

variable "subnetwork" {
  description = "Self link of the subnetwork to attach"
  type        = string
}

variable "service_account_email" {
  description = "Service account email to attach to the instance"
  type        = string
}

variable "service_account_scopes" {
  description = "List of service account scopes"
  type        = list(string)
}

variable "scheduling_automatic_restart" {
  description = "Whether the instance should be automatically restarted"
  type        = bool
}

variable "scheduling_on_host_maintenance" {
  description = "Maintenance behavior (MIGRATE or TERMINATE)"
  type        = string
}

variable "scheduling_provisioning_model" {
  description = "Provisioning model (STANDARD or SPOT)"
  type        = string
}

variable "shielded_enable_vtpm" {
  description = "Whether vTPM is enabled"
  type        = bool
}

variable "shielded_enable_integrity_monitoring" {
  description = "Whether integrity monitoring is enabled"
  type        = bool
}