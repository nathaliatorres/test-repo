variable "region" {
  type        = string
  description = "The Azure region for the provider"
}

variable "role_assignment_name" {
  type        = string
  description = "The UUID/GUID for the role assignment"
}

variable "role_assignment_scope" {
  type        = string
  description = "The scope at which the role assignment applies"
}

variable "role_definition_id" {
  type        = string
  description = "The scoped ID of the role definition to assign"
}

variable "principal_id" {
  type        = string
  description = "The ID of the principal to assign the role to"
}

variable "principal_type" {
  type        = string
  description = "The type of the principal_id (User, Group, or ServicePrincipal)"
}