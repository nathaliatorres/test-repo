#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.compute_disk.google_compute_disk.this' 'projects/stackguardian-nonprod/zones/europe-north1-b/disks/jovm-001'
"$1" import -var-file environments/sg.tfvars 'module.compute_subnetwork.google_compute_subnetwork.this' 'projects/stackguardian-nonprod/regions/europe-north1/subnetworks/default'
"$1" import -var-file environments/sg.tfvars 'module.compute_instance.google_compute_instance.this' 'projects/stackguardian-nonprod/zones/europe-north1-b/instances/jovm-001'