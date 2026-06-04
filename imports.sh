#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.compute_network.google_compute_network.this' 'sg-test-clara'
"$1" import -var-file environments/sg.tfvars 'module.compute_subnetwork.google_compute_subnetwork.this' 'europe-west1/subnet-01-clara'