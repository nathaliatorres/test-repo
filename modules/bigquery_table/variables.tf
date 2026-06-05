# GCP project that owns this table.
variable "project" {
  description = "The GCP project ID."
  type        = string
}

# BigQuery dataset containing the table.
variable "dataset_id" {
  description = "The ID of the dataset that contains this table."
  type        = string
}

# The table ID within the dataset.
variable "table_id" {
  description = "The table ID (name) within the dataset."
  type        = string
}

# Optional human-readable description.
variable "description" {
  description = "A user-friendly description of the table."
  type        = string
  default     = ""
}

# Partition filter requirement.
variable "require_partition_filter" {
  description = "If true, queries must include a partition filter."
  type        = bool
  default     = false
}
