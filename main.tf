module "security_group" {
  source      = "./modules/security_group"
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
}