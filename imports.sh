#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.role_assignment.azurerm_role_assignment.this' '/providers/Microsoft.Authorization/roleAssignments/8e90d35e-48b2-453b-a6e6-c146f9bf731d'