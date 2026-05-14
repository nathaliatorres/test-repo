variable "name" {
  type        = string
  description = "The UUID/GUID for this role assignment"
}

variable "scope" {
  type        = string
  description = "The scope at which the role assignment applies"
}

variable "role_definition_id" {
  type        = string
  description = "The scoped ID of the role definition to assign"
}

variable "principal_id" {
  type        = string
  description = "The ID of the principal (user, group, or service principal) to assign the role to"
}

variable "principal_type" {
  type        = string
  description = "The type of the principal_id (User, Group, or ServicePrincipal)"
}