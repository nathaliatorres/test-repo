variable "region" {
  description = "The Azure region for the provider"
  type        = string
}

variable "role_assignment_name" {
  description = "The unique UUID/GUID for the role assignment"
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
  description = "The ID of the principal to assign the role to"
  type        = string
}

variable "principal_type" {
  description = "The type of the principal_id (User, Group, or ServicePrincipal)"
  type        = string
}