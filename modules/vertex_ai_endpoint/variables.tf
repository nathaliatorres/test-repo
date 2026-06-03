variable "name" {
  type        = string
  description = "The resource name of the Endpoint (numeric, no leading zeros, at most 10 digits)"
}

variable "display_name" {
  type        = string
  description = "The display name of the Endpoint"
}

variable "location" {
  type        = string
  description = "The location for the resource"
}

variable "description" {
  type        = string
  description = "The description of the Endpoint"
}

variable "labels" {
  type        = map(string)
  description = "Labels with user-defined metadata to organize Endpoints"
  default     = {}
}