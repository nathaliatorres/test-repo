# azurenetwork-vnet-stack

## Description

Azure Virtual Network with three subnets in the azurenetwork resource group.

## Architecture Overview

This stack provisions an Azure Virtual Network (`azurenetworknet`) in the `azurenetwork` resource group (East US region) along with three child subnets managed via a reusable local module.

## Module Overview

| Module | Path | Description |
|--------|------|-------------|
| `virtual_network` | `./modules/virtual_network` | Manages the Azure Virtual Network and its child subnets |

### Resources Managed

| Resource Type | Logical Name | Description |
|---------------|--------------|-------------|
| `azurerm_virtual_network` | `this` | The primary virtual network |
| `azurerm_subnet` | `this` (for_each) | Three subnets within the virtual network |

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

### Prerequisites

- OpenTofu >= 1.6 or Terraform >= 1.5
- Azure CLI authenticated (`az login`) or a service principal configured
- Access to subscription `a97621d8-9158-4681-81b6-38b1222afba4`

### 1. Initialize

```sh
tofu init
```

### 2. Import Existing Resources

```sh
./imports.sh tofu
```

### 3. Plan (verify zero drift)

```sh
tofu plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
tofu apply -var-file environments/sg.tfvars
```