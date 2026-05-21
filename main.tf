module "role_assignment" {
  source             = "./modules/role_assignment"
  name               = var.role_assignment_name
  scope              = var.role_assignment_scope
  role_definition_id = var.role_definition_id
  principal_id       = var.principal_id
  principal_type     = var.principal_type
}