resource "google_compute_disk" "this" {
  name  = var.name
  image = var.image
  size  = var.size
  type  = var.type
  zone  = var.zone
}