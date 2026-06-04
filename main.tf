module "compute_disk" {
  source = "./modules/compute_disk"

  image = var.disk_image
  name  = var.disk_name
  size  = var.disk_size
  type  = var.disk_type
  zone  = var.disk_zone
}

module "compute_subnetwork" {
  source = "./modules/compute_subnetwork"

  ip_cidr_range            = var.subnetwork_ip_cidr_range
  name                     = var.subnetwork_name
  network                  = var.subnetwork_network
  private_ip_google_access = var.subnetwork_private_ip_google_access
  purpose                  = var.subnetwork_purpose
  region                   = var.subnetwork_region
}

module "compute_instance" {
  source = "./modules/compute_instance"

  boot_disk_source                     = module.compute_disk.self_link
  can_ip_forward                       = var.instance_can_ip_forward
  deletion_protection                  = var.instance_deletion_protection
  desired_status                       = var.instance_desired_status
  machine_type                         = var.instance_machine_type
  name                                 = var.instance_name
  scheduling_automatic_restart         = var.instance_scheduling_automatic_restart
  scheduling_on_host_maintenance       = var.instance_scheduling_on_host_maintenance
  scheduling_provisioning_model        = var.instance_scheduling_provisioning_model
  service_account_email                = var.instance_service_account_email
  service_account_scopes               = var.instance_service_account_scopes
  shielded_enable_integrity_monitoring = var.instance_shielded_enable_integrity_monitoring
  shielded_enable_vtpm                 = var.instance_shielded_enable_vtpm
  subnetwork                           = module.compute_subnetwork.self_link
  zone                                 = var.instance_zone
}