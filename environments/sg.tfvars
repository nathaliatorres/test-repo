region = "europe-north1"

disk_name  = "jovm-001"
disk_size  = 10
disk_type  = "pd-balanced"
disk_image = "https://www.googleapis.com/compute/v1/projects/debian-cloud/global/images/debian-11-bullseye-v20230411"
disk_zone  = "europe-north1-b"

subnetwork_name                     = "default"
subnetwork_network                  = "https://www.googleapis.com/compute/v1/projects/stackguardian-nonprod/global/networks/default"
subnetwork_ip_cidr_range            = "10.166.0.0/20"
subnetwork_region                   = "europe-north1"
subnetwork_private_ip_google_access = false
subnetwork_purpose                  = "PRIVATE"

instance_name                                 = "jovm-001"
instance_machine_type                         = "e2-micro"
instance_zone                                 = "europe-north1-b"
instance_can_ip_forward                       = false
instance_deletion_protection                  = false
instance_desired_status                       = "TERMINATED"
instance_service_account_email                = "597595105496-compute@developer.gserviceaccount.com"
instance_service_account_scopes               = [
  "https://www.googleapis.com/auth/devstorage.read_only",
  "https://www.googleapis.com/auth/logging.write",
  "https://www.googleapis.com/auth/monitoring.write",
  "https://www.googleapis.com/auth/servicecontrol",
  "https://www.googleapis.com/auth/service.management.readonly",
  "https://www.googleapis.com/auth/trace.append",
]
instance_scheduling_automatic_restart         = true
instance_scheduling_on_host_maintenance       = "MIGRATE"
instance_scheduling_provisioning_model        = "STANDARD"
instance_shielded_enable_vtpm                 = true
instance_shielded_enable_integrity_monitoring = true