# Manages a single BigQuery table and its basic configuration.
resource "google_bigquery_table" "this" {
  project    = var.project
  dataset_id = var.dataset_id
  table_id   = var.table_id

  # Human-readable description for the table.
  description = var.description

  # When true, queries against this table must supply a partition filter.
  require_partition_filter = var.require_partition_filter
}
