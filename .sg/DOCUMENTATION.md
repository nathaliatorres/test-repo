# inv-scan-network

## Description

VPC network and subnet infrastructure for inv-scan workloads. This stack provisions a custom-mode VPC network and an associated subnetwork in GCP's `us-central1` region.

## Module Overview

| Module | Description | Source |
|--------|-------------|--------|
| `compute_network` | Manages the inv-scan VPC network | `./modules/compute_network` |
| `compute_subnetwork` | Manages the inv-scan subnet within the VPC network | `./modules/compute_subnetwork` |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The GCP region for resources | — |
| `network_name` | `string` | Name of the VPC network | — |
| `network_auto_create_subnetworks` | `bool` | Whether to auto-create subnetworks in the VPC network | — |
| `network_routing_mode` | `string` | Network-wide routing mode (REGIONAL or GLOBAL) | — |
| `subnetwork_name` | `string` | Name of the subnetwork | — |
| `subnetwork_ip_cidr_range` | `string` | The IP CIDR range for the subnetwork | — |
| `subnetwork_private_ip_google_access` | `bool` | Whether VMs without external IPs can access Google APIs via Private Google Access | — |
| `subnetwork_purpose` | `string` | The purpose of the subnetwork | — |

## Outputs Reference

| Name | Description |
|------|-------------|
| `network_self_link` | The self_link of the VPC network |
| `network_name` | The name of the VPC network |
| `subnetwork_self_link` | The self_link of the subnetwork |
| `subnetwork_name` | The name of the subnetwork |

## Usage Instructions

### 1. Initialize

```sh
tofu init
```

### 2. Import existing resources

```sh
chmod +x imports.sh
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

## Resource Inventory

| Resource | Address | Import ID |
|----------|---------|-----------|
| `google_compute_network` | `module.compute_network.google_compute_network.this` | `inv-scan-vpc` |
| `google_compute_subnetwork` | `module.compute_subnetwork.google_compute_subnetwork.this` | `us-central1/inv-scan-subnet` |