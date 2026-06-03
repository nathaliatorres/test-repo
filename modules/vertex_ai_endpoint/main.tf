resource "google_vertex_ai_endpoint" "this" {
  name         = var.name
  display_name = var.display_name
  location     = var.location
  description  = var.description
  labels       = var.labels
}