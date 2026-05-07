# role-assignment-subscription

## Description

Azure role assignment granting a user a role definition at the subscription scope.

## Module Overview

| Module | Description |
|--------|-------------|
| `role_assignment` | Manages an Azure role assignment for a user at subscription scope |

## Resources

| Resource Type | Description |
|---------------|-------------|
| `azurerm_role_assignment` | Role assignment binding a principal to a role definition at a given scope |

## Variables Reference

| Name | Type | Description |
|------|------|-------------|
| `region` | `string` | The Azure region for the provider |
| `name` | `string` | The UUID/GUID for this Role Assignment |
| `scope` | `string` | The scope at which the Role Assignment applies |
| `role_definition_id` | `string` | The Scoped-ID of the Role Definition to assign |
| `principal_id` | `string` | The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to |
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