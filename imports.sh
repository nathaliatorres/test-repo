#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.compute_subnetwork.google_compute_subnetwork.this' 'projects/stackguardian-nonprod/regions/europe-west3/subnetworks/vdesktop-subnet'
"$1" import -var-file environments/sg.tfvars 'module.compute_disk.google_compute_disk.this' 'projects/stackguardian-nonprod/zones/europe-west3-a/disks/vdesktop-vm'
"$1" import -var-file environments/sg.tfvars 'module.compute_instance.google_compute_instance.this' 'projects/stackguardian-nonprod/zones/europe-west3-a/instances/vdesktop-vm'