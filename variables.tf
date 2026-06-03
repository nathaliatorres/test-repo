variable "project" {
  type        = string
  description = "The GCP project ID"
}

variable "region" {
  type        = string
  description = "The GCP region for all resources"
}

variable "endpoint_name" {
  type        = string
  description = "The resource name of the Vertex AI endpoint (numeric, no leading zeros, at most 10 digits)"
}

variable "endpoint_display_name" {
  type        = string
  description = "The display name of the Vertex AI endpoint"
}

variable "endpoint_description" {
  type        = string
  description = "The description of the Vertex AI endpoint"
}

variable "endpoint_labels" {
  type        = map(string)
  description = "Labels with user-defined metadata to organize the endpoint"
  default     = {}
}