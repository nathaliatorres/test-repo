#!/bin/sh
set -e

"$1" import -var-file environments/sg.tfvars 'module.role_assignment.azurerm_role_assignment.this' '/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/providers/Microsoft.Authorization/roleAssignments/17d18ea5-c6e0-4266-9e3a-eeec5784381f'