# Root module: wires the bigquery_table child module for every table instance.
module "bigquery_table" {
  source   = "./modules/bigquery_table"
  for_each = var.bigquery_tables

  # Identity
  project    = each.value.project
  dataset_id = each.value.dataset_id
  table_id   = each.value.table_id

  # Optional configuration
  description              = each.value.description
  require_partition_filter = each.value.require_partition_filter
}
