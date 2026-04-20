# role-assignment-user-admin

## Description

Azure role assignment granting a user the specified role at root scope.

## Module Overview

| Module | Description |
|--------|-------------|
| `role_assignment` | Manages an Azure role assignment for a user principal |

## Variables Reference

| Name | Type | Description |
|------|------|-------------|
| `region` | `string` | The Azure region for the provider |
| `role_assignment_name` | `string` | The unique UUID/GUID for the role assignment |
| `scope` | `string` | The scope at which the role assignment applies |
| `role_definition_id` | `string` | The scoped ID of the role definition to assign |
| `principal_id` | `string` | The ID of the principal to assign the role to |
| `principal_type` | `string` | The type of the principal_id (User, Group, or ServicePrincipal) |

## Outputs Reference

| Name | Description |
|------|-------------|
| `role_assignment_id` | The ID of the role assignment |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import Existing Resources

```sh
sh imports.sh terraform
```

### 3. Plan

```sh
terraform plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
terraform apply -var-file environments/sg.tfvars
```