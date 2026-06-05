# Map of BigQuery table instances keyed by a stable snake_case identifier.
variable "bigquery_tables" {
  description = "Map of BigQuery table instances to manage."
  type = map(object({
    project                  = string
    dataset_id               = string
    table_id                 = string
    description              = optional(string, "")
    require_partition_filter = optional(bool, false)
  }))
  default = {}
}
