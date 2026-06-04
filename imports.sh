#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.compute_network.google_compute_network.this' 'inv-scan-vpc'
"$1" import -var-file environments/sg.tfvars 'module.compute_subnetwork.google_compute_subnetwork.this' 'us-central1/inv-scan-subnet'