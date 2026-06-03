variable "name" {
  description = "Name of the disk"
  type        = string
}

variable "zone" {
  description = "The zone where the disk resides"
  type        = string
}

variable "type" {
  description = "The disk type (e.g. pd-balanced)"
  type        = string
}

variable "size" {
  description = "Size of the disk in GB"
  type        = number
}

variable "image" {
  description = "The source image URL to initialize the disk from"
  type        = string
}