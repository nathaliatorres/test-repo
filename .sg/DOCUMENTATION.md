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
| `azurerm_virtual_network` | `this` | The primary virtual network |
| `azurerm_subnet` | `this` (for_each) | Subnets within the virtual network |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The Azure region where resources are deployed | — |
| `virtual_network_name` | `string` | The name of the virtual network | — |
| `resource_group_name` | `string` | The name of the resource group | — |
| `address_space` | `list(string)` | The address space used by the virtual network | — |
| `tags` | `map(string)` | A mapping of tags to assign to resources | — |
| `subnets` | `map(object({...}))` | Map of subnets to create within the virtual network | — |

## Outputs Reference

| Name | Description |
|------|-------------|
| `virtual_network_id` | The ID of the virtual network |
| `virtual_network_name` | The name of the virtual network |

## Usage Instructions

### 1. Initialize

```sh
terraform init
# or
tofu init
```

### 2. Import existing resources

```sh
./imports.sh terraform
# or
./imports.sh tofu
```

### 3. Plan

```sh
terraform plan -var-file environments/sg.tfvars
# or
tofu plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
terraform apply -var-file environments/sg.tfvars
# or
tofu apply -var-file environments/sg.tfvars
```

## Subnet Configuration

| Subnet | Address Prefix |
|--------|---------------|
| subnet1 | 10.100.1.0/24 |
| subnet2 | 10.100.2.0/24 |
| subnet3 | 10.100.3.0/24 |