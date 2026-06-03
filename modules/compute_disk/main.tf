resource "google_compute_disk" "this" {
  name  = var.name
  zone  = var.zone
  type  = var.type
  size  = var.size
  image = var.image
}