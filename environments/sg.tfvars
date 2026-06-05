# BigQuery table instances — one entry per discovered table.
bigquery_tables = {
  students = {
    project                  = "stackguardian-nonprod"
    dataset_id               = "sg_infra_2_code"
    table_id                 = "students"
    description              = ""
    require_partition_filter = false
  }
}
