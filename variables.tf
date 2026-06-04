variable "region" {
  description = "GCP region for the stack"
  type        = string
}

variable "disk_name" {
  description = "Name of the compute disk"
  type        = string
}

variable "disk_size" {
  description = "Size of the disk in GB"
  type        = number
}

variable "disk_type" {
  description = "Disk type (e.g. pd-balanced)"
  type        = string
}

variable "disk_image" {
  description = "Source image URL for the disk"
  type        = string
}

variable "disk_zone" {
  description = "Zone where the disk resides"
  type        = string
}

variable "subnetwork_name" {
  description = "Name of the subnetwork"
  type        = string
}

variable "subnetwork_network" {
  description = "The network this subnet belongs to"
  type        = string
}

variable "subnetwork_ip_cidr_range" {
  description = "IP CIDR range for the subnetwork"
  type        = string
}

variable "subnetwork_region" {
  description = "GCP region for the subnetwork"
  type        = string
}

variable "subnetwork_private_ip_google_access" {
  description = "Whether VMs can access Google APIs without external IPs"
  type        = bool
}

variable "subnetwork_purpose" {
  description = "The purpose of the subnetwork"
  type        = string
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
}

variable "instance_machine_type" {
  description = "Machine type for the instance"
  type        = string
}

variable "instance_zone" {
  description = "Zone where the instance is created"
  type        = string
}

variable "instance_can_ip_forward" {
  description = "Whether to allow IP forwarding"
  type        = bool
}

variable "instance_deletion_protection" {
  description = "Whether deletion protection is enabled"
  type        = bool
}

variable "instance_desired_status" {
  description = "Desired status of the instance (RUNNING, SUSPENDED, or TERMINATED)"
  type        = string
}

variable "instance_service_account_email" {
  description = "Service account email to attach to the instance"
  type        = string
}

variable "instance_service_account_scopes" {
  description = "List of service account scopes"
  type        = list(string)
}

variable "instance_scheduling_automatic_restart" {
  description = "Whether the instance should be automatically restarted"
  type        = bool
}

variable "instance_scheduling_on_host_maintenance" {
  description = "Maintenance behavior (MIGRATE or TERMINATE)"
  type        = string
}

variable "instance_scheduling_provisioning_model" {
  description = "Provisioning model (STANDARD or SPOT)"
  type        = string
}

variable "instance_shielded_enable_vtpm" {
  description = "Whether vTPM is enabled"
  type        = bool
}

variable "instance_shielded_enable_integrity_monitoring" {
  description = "Whether integrity monitoring is enabled"
  type        = bool
}