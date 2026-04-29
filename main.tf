terraform {
  required_version = ">= 1.0"
  
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

# Variables to facilitate testing - new change
variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "stackguardian-test"
}

variable "app_version" {
  description = "Application version - change this to force updates"
  type        = string
  default     = "1.0.0"
}

# Null resource - exists only in state, perfect for testing
resource "null_resource" "main_deployment" {
  triggers = {
    environment = var.environment
    project     = var.project_name
    version     = var.app_version
  }

  provisioner "local-exec" {
    command = "echo 'Deployment completed for ${var.project_name} in ${var.environment}'"
  }
}

# Another null resource for testing
resource "null_resource" "configuration" {
  triggers = {
    config_data = jsonencode({
      project     = var.project_name
      environment = var.environment
      version     = var.app_version
      enabled     = true
    })
  }

  provisioner "local-exec" {
    command = "echo 'Configuration applied'"
  }
}

# Outputs to view the configuration
output "deployment_info" {
  description = "Deployment information"
  value = {
    project     = var.project_name
    environment = var.environment
    version     = var.app_version
    resource_id = null_resource.main_deployment.id
  }
}

output "configuration_data" {
  description = "Configuration data"
  value = jsondecode(null_resource.configuration.triggers.config_data)
}

output "deployment_id" {
  description = "Deployment resource ID"
  value       = null_resource.main_deployment.id
}