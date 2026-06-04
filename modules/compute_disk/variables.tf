variable "name" {
  description = "Name of the compute disk"
  type        = string
}

variable "size" {
  description = "Size of the disk in GB"
  type        = number
}

variable "type" {
  description = "Disk type (e.g. pd-balanced)"
  type        = string
}

variable "image" {
  description = "Source image URL for the disk"
  type        = string
}

variable "zone" {
  description = "Zone where the disk resides"
  type        = string
}