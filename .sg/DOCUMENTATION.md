# role-assignment-contributor

## Description

Assigns the Contributor built-in role to a user at the subscription scope.

## Module Overview

| Module | Description |
|--------|-------------|
| `role_assignment` | Manages an Azure role assignment for a user principal at subscription scope |

## Resources

| Resource Type | Description |
|---------------|-------------|
| `azurerm_role_assignment` | Azure RBAC role assignment binding a principal to a role at a given scope |

## Variables Reference

| Name | Type | Description |
|------|------|-------------|
| `region` | `string` | The Azure region for the provider |
| `role_assignment_name` | `string` | The UUID/GUID for the Role Assignment |
| `role_assignment_scope` | `string` | The scope at which the Role Assignment applies |
| `role_definition_id` | `string` | The Scoped-ID of the Role Definition to assign |
| `principal_id` | `string` | The ID of the principal to assign the role to |
| `principal_type` | `string` | The type of the principal_id (User, Group or ServicePrincipal) |

## Outputs Reference

| Name | Description |
|------|-------------|
| `role_assignment_id` | The Role Assignment ID |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import existing resources

```sh
./imports.sh terraform
```

### 3. Plan

```sh
terraform plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
terraform apply -var-file environments/sg.tfvars
```