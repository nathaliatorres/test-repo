# The self_link of the managed BigQuery table.
output "self_link" {
  description = "The URI of the created table."
  value       = google_bigquery_table.this.self_link
}

# The fully-qualified table ID in the form project:dataset.table.
output "table_id_qualified" {
  description = "Fully-qualified table ID."
  value       = google_bigquery_table.this.id
}
