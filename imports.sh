#!/bin/sh
set -e
# Import the 'students' BigQuery table into Terraform state.
"$1" import -var-file environments/sg.tfvars 'module.bigquery_table["students"].google_bigquery_table.this' 'stackguardian-nonprod/sg_infra_2_code/students'
