#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.vertex_ai_endpoint.google_vertex_ai_endpoint.this' 'us-central1/inv-scan-endpoint'