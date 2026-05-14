#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.role_assignment.azurerm_role_assignment.this' '/providers/Microsoft.Authorization/roleAssignments/e209f50d-3c32-4395-bab7-902f752a1935'