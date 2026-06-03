module "vertex_ai_endpoint" {
  source = "./modules/vertex_ai_endpoint"

  name         = var.endpoint_name
  display_name = var.endpoint_display_name
  location     = var.region
  description  = var.endpoint_description
  labels       = var.endpoint_labels
}