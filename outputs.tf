# Re-export table self_links for downstream consumers.
output "bigquery_table_self_links" {
  description = "Map of self_link values for every managed BigQuery table."
  value       = { for k, v in module.bigquery_table : k => v.self_link }
}
