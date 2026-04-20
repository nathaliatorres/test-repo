variable "name" {
  description = "The unique UUID/GUID for this role assignment"
  type        = string
}

variable "scope" {
  description = "The scope at which the role assignment applies"
  type        = string
}

variable "role_definition_id" {
  description = "The scoped ID of the role definition to assign"
  type        = string
}

variable "principal_id" {
  description = "The ID of the principal (user, group, or service principal) to assign the role to"
  type        = string
}

variable "principal_type" {
  description = "The type of the principal_id (User, Group, or ServicePrincipal)"
  type        = string
}