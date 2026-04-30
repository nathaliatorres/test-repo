# azurenetwork-vnet-stack

## Description

Azure Virtual Network with three subnets in the azurenetwork resource group.

## Module Overview

| Module | Description |
|--------|-------------|
| `virtual_network` | Manages the Azure Virtual Network and its child subnets |

## Resources

| Resource Type | Name | Description |
|---------------|------|-------------|
| `azurerm_virtual_network` | `this` | The primary virtual network resource |
| `azurerm_subnet` | `this` (for_each) | Subnets created within the virtual network |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The Azure region to deploy resources into | — |
| `virtual_network_name` | `string` | The name of the virtual network | — |
| `resource_group_name` | `string` | The name of the resource group | — |
| `location` | `string` | The location/region where resources are created | — |
| `address_space` | `list(string)` | The address space used by the virtual network | — |
| `tags` | `map(string)` | A mapping of tags to assign to resources | `{}` |
| `subnets` | `map(object({...}))` | Map of subnets to create within the virtual network | `{}` |

## Outputs Reference

| Name | Description |
|------|-------------|
| `virtual_network_id` | The ID of the virtual network |
| `virtual_network_name` | The name of the virtual network |

## Usage Instructions

### 1. Initialize

```sh
tofu init
```

### 2. Import Existing Resources

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

## Environment

The `environments/sg.tfvars` file contains the variable values for this stack:

- **Region**: `eastus`
- **Virtual Network**: `azurenetworknet` in resource group `azurenetwork`
- **Address Space**: `10.0.0.0/16`
- **Subnets**: `subnet1` (10.0.1.0/24), `subnet2` (10.0.2.0/24), `subnet3` (10.0.3.0/24)