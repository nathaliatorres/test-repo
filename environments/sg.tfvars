region = "europe-west3"
zone   = "europe-west3-a"

subnetwork_name                     = "vdesktop-subnet"
subnetwork_network                  = "vdesktop-vpc"
subnetwork_ip_cidr_range            = "10.20.0.0/24"
subnetwork_purpose                  = "PRIVATE"
subnetwork_private_ip_google_access = true

disk_name  = "vdesktop-vm"
disk_type  = "pd-balanced"
disk_size  = 100
disk_image = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20260422"

instance_name                           = "vdesktop-vm"
instance_machine_type                   = "n2-standard-8"
instance_can_ip_forward                 = false
instance_deletion_protection            = false
instance_tags                           = ["vdesktop-vm"]
instance_labels                         = {
  goog-terraform-provisioned = "true"
  managed                    = "terraform"
  purpose                    = "virtual-desktop"
}
instance_metadata                       = {
  enable-oslogin = "FALSE"
}
instance_service_account_email          = "597595105496-compute@developer.gserviceaccount.com"
instance_service_account_scopes         = ["https://www.googleapis.com/auth/cloud-platform"]
instance_scheduling_automatic_restart   = true
instance_scheduling_on_host_maintenance = "MIGRATE"
instance_scheduling_provisioning_model  = "STANDARD"
instance_enable_secure_boot             = true
instance_enable_vtpm                    = true
instance_enable_integrity_monitoring    = true