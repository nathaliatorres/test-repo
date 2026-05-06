# arunim-host-westeurope

## Description

Azure Virtual Machine with managed OS disk, network interface, and public IP for arunim-host-0 in West Europe.

This stack provisions a complete Windows VM environment including:
- A Standard public IP address
- A network interface with static private IP connected to an existing subnet
- A managed OS disk (StandardSSD_LRS)
- A Windows 10 virtual machine with system-assigned managed identity and boot diagnostics

## Module Overview

| Module | Description | Resource Type |
|--------|-------------|---------------|
| `public_ip` | Manages the public IP address for the VM NIC | `azurerm_public_ip` |
| `network_interface` | Manages the network interface for the VM | `azurerm_network_interface` |
| `managed_disk` | Manages the OS managed disk for the VM | `azurerm_managed_disk` |
| `virtual_machine` | Manages the Azure Virtual Machine | `azurerm_virtual_machine` |

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | `string` | Azure region for all resources | — |
| `resource_group_name` | `string` | Name of the resource group | — |
| `public_ip_name` | `string` | Name of the public IP resource | — |
| `public_ip_allocation_method` | `string` | Allocation method for the public IP | — |
| `public_ip_sku` | `string` | SKU of the public IP | — |
| `network_interface_name` | `string` | Name of the network interface | — |
| `nic_accelerated_networking_enabled` | `bool` | Whether accelerated networking is enabled | — |
| `nic_ip_forwarding_enabled` | `bool` | Whether IP forwarding is enabled | — |
| `nic_ip_configuration_name` | `string` | Name of the NIC IP configuration | — |
| `nic_private_ip_address_allocation` | `string` | Private IP allocation method | — |
| `nic_private_ip_address` | `string` | Static private IP address | — |
| `nic_private_ip_address_version` | `string` | IP version for the NIC private IP | — |
| `subnet_id` | `string` | ID of the subnet for the NIC | — |
| `nic_ip_configuration_primary` | `bool` | Whether the NIC IP configuration is primary | — |
| `nic_tags` | `map(string)` | Tags for the network interface | — |
| `managed_disk_name` | `string` | Name of the managed disk | — |
| `managed_disk_storage_account_type` | `string` | Storage account type for the managed disk | — |
| `managed_disk_create_option` | `string` | Creation method for the managed disk | — |
| `managed_disk_size_gb` | `number` | Size of the managed disk in GB | — |
| `managed_disk_os_type` | `string` | OS type for the managed disk | — |
| `managed_disk_tags` | `map(string)` | Tags for the managed disk | — |
| `vm_name` | `string` | Name of the virtual machine | — |
| `vm_size` | `string` | Size/SKU of the virtual machine | — |
| `vm_identity_type` | `string` | Type of managed identity for the VM | — |
| `vm_computer_name` | `string` | Computer name of the virtual machine | — |
| `vm_admin_username` | `string` | Admin username for the virtual machine | — |
| `vm_image_publisher` | `string` | Publisher of the VM image | — |
| `vm_image_offer` | `string` | Offer of the VM image | — |
| `vm_image_sku` | `string` | SKU of the VM image | — |
| `vm_image_version` | `string` | Version of the VM image | — |
| `vm_os_disk_name` | `string` | Name of the OS disk | — |
| `vm_os_disk_create_option` | `string` | Create option for the OS disk | — |
| `vm_os_disk_caching` | `string` | Caching setting for the OS disk | — |
| `vm_os_type` | `string` | OS type for the OS disk | — |
| `vm_os_disk_managed_disk_type` | `string` | Managed disk type for the OS disk | — |
| `vm_boot_diagnostics_enabled` | `bool` | Whether boot diagnostics is enabled | — |
| `vm_boot_diagnostics_storage_uri` | `string` | Storage URI for boot diagnostics | — |
| `vm_tags` | `map(string)` | Tags for the virtual machine | — |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `virtual_machine_id` | The ID of the virtual machine |
| `network_interface_id` | The ID of the network interface |
| `managed_disk_id` | The ID of the managed disk |
| `public_ip_id` | The ID of the public IP |

## Usage Instructions

### Prerequisites

- Azure CLI authenticated (`az login`)
- Terraform or OpenTofu installed
- Access to subscription `a97621d8-9158-4681-81b6-38b1222afba4`

### Steps

1. **Initialize**
   ```sh
   terraform init
   # or
   tofu init
   ```

2. **Import existing resources**
   ```sh
   ./imports.sh terraform
   # or
   ./imports.sh tofu
   ```

3. **Plan** (verify zero drift)
   ```sh
   terraform plan -var-file environments/sg.tfvars
   ```

4. **Apply** (if changes are needed)
   ```sh
   terraform apply -var-file environments/sg.tfvars
   ```