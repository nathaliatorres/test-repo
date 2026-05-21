# role-assignment-stack

## Description

Azure role assignment granting a user a specific role at root scope.

## Module Overview

| Module | Description | Source |
|--------|-------------|--------|
| `role_assignment` | Manages an Azure role assignment for a user principal | `./modules/role_assignment` |

## Resources

| Resource Type | Logical Name | Description |
|---------------|--------------|-------------|
| `azurerm_role_assignment` | `this` | Role assignment granting a principal a role at a given scope |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The Azure region for the provider | — |
| `role_assignment_name` | `string` | The UUID/GUID for the role assignment | — |
| `role_assignment_scope` | `string` | The scope at which the role assignment applies | — |
| `role_definition_id` | `string` | The scoped ID of the role definition to assign | — |
| `principal_id` | `string` | The ID of the principal to assign the role to | — |
| `principal_type` | `string` | The type of the principal_id (User, Group, or ServicePrincipal) | — |

## Outputs Reference

| Name | Description |
|------|-------------|
| `role_assignment_id` | The ID of the role assignment |

## Usage Instructions

### 1. Initialize

```sh
tofu init
```

### 2. Import existing resources

```sh
./imports.sh tofu
```

### 3. Plan

```sh
tofu plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
tofu apply -var-file environments/sg.tfvars
```