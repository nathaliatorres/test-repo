variable "display_name" {
  type        = string
  description = "The display name of the model"
}

variable "location" {
  type        = string
  description = "The location for the resource"
}

variable "container_image_uri" {
  type        = string
  description = "The URI of the container image to use for the model"
}