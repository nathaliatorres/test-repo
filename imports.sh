#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.compute_network.google_compute_network.this' 'vdesktop-vpc'
"$1" import -var-file environments/sg.tfvars 'module.compute_subnetwork.google_compute_subnetwork.this' 'europe-west3/vdesktop-subnet'
"$1" import -var-file environments/sg.tfvars 'module.compute_firewall.google_compute_firewall.this' 'vdesktop-allow-ssh'