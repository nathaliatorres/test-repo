# kabibeispiel-virtual-network

## Description

Virtual network with three subnets in the kabibeispiel resource group, deployed in the `germanywestcentral` Azure region.

## Module Overview

| Module | Description |
|--------|-------------|
| `virtual_network` | Manages the Kabibeispiel virtual network and its child subnets |

## Resources

| Resource Type | Name | Description |
|---------------|------|-------------|
| `azurerm_virtual_network` | `this` | The Kabibeispiel virtual network |
| `azurerm_subnet` | `this` (for_each) | Three subnets within the virtual network |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The Azure region where resources will be deployed | — |
| `virtual_network_name` | `string` | The name of the virtual network | — |
| `resource_group_name` | `string` | The name of the resource group | — |
| `address_space` | `list(string)` | The address space used by the virtual network | — |
| `tags` | `map(string)` | A mapping of tags to assign to resources | `{}` |
| `subnets` | `map(object({...}))` | Map of subnets to create within the virtual network | `{}` |

## Outputs Reference

| Name | Description |
|------|-------------|
| `virtual_network_id` | The ID of the virtual network |
| `virtual_network_name` | The name of the virtual network |
| `subnet_ids` | A map of subnet keys to subnet IDs |

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