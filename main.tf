module "compute_subnetwork" {
  source = "./modules/compute_subnetwork"

  name                     = var.subnetwork_name
  network                  = var.subnetwork_network
  ip_cidr_range            = var.subnetwork_ip_cidr_range
  region                   = var.region
  purpose                  = var.subnetwork_purpose
  private_ip_google_access = var.subnetwork_private_ip_google_access
}

module "compute_disk" {
  source = "./modules/compute_disk"

  name  = var.disk_name
  zone  = var.zone
  type  = var.disk_type
  size  = var.disk_size
  image = var.disk_image
}

module "compute_instance" {
  source = "./modules/compute_instance"

  name                           = var.instance_name
  machine_type                   = var.instance_machine_type
  zone                           = var.zone
  can_ip_forward                 = var.instance_can_ip_forward
  deletion_protection            = var.instance_deletion_protection
  tags                           = var.instance_tags
  labels                         = var.instance_labels
  metadata                       = var.instance_metadata
  boot_disk_source               = module.compute_disk.self_link
  subnetwork                     = module.compute_subnetwork.self_link
  service_account_email          = var.instance_service_account_email
  service_account_scopes         = var.instance_service_account_scopes
  scheduling_automatic_restart   = var.instance_scheduling_automatic_restart
  scheduling_on_host_maintenance = var.instance_scheduling_on_host_maintenance
  scheduling_provisioning_model  = var.instance_scheduling_provisioning_model
  enable_secure_boot             = var.instance_enable_secure_boot
  enable_vtpm                    = var.instance_enable_vtpm
  enable_integrity_monitoring    = var.instance_enable_integrity_monitoring
}