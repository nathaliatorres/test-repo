variable "region" {
  description = "The Azure region for the provider"
  type        = string
}

variable "role_assignment_name" {
  description = "The UUID/GUID for the Role Assignment"
  type        = string
}

variable "role_assignment_scope" {
  description = "The scope at which the Role Assignment applies"
  type        = string
}

variable "role_definition_id" {
  description = "The Scoped-ID of the Role Definition to assign"
  type        = string
}

variable "principal_id" {
  description = "The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to"
  type        = string
}

variable "principal_type" {
  description = "The type of the principal_id (User, Group or ServicePrincipal)"
  type        = string
}