#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.role_assignment.azurerm_role_assignment.this' '/providers/Microsoft.Management/managementGroups/e486c990-3cab-4813-a86a-77b4c6b8f3d6/providers/Microsoft.Authorization/roleAssignments/fc8a01aa-18b4-4294-8501-9632ec1d9ea6'