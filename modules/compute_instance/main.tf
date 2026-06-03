resource "google_compute_instance" "this" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  can_ip_forward      = var.can_ip_forward
  deletion_protection = var.deletion_protection
  labels              = var.labels
  metadata            = var.metadata
  tags                = var.tags

  boot_disk {
    source = var.boot_disk_source
  }

  network_interface {
    subnetwork = var.subnetwork
  }

  scheduling {
    automatic_restart   = var.scheduling_automatic_restart
    on_host_maintenance = var.scheduling_on_host_maintenance
    provisioning_model  = var.scheduling_provisioning_model
  }

  service_account {
    email  = var.service_account_email
    scopes = var.service_account_scopes
  }

  shielded_instance_config {
    enable_integrity_monitoring = var.enable_integrity_monitoring
    enable_secure_boot          = var.enable_secure_boot
    enable_vtpm                 = var.enable_vtpm
  }
}