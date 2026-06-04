# sg-test-clara-network

## Description

VPC network and subnet infrastructure for sg-test-clara. This stack provisions a custom-mode VPC network and a primary subnetwork with secondary IP ranges in the `europe-west1` region.

## Module Overview

| Module | Description |
|--------|-------------|
| `compute_network` | Manages the VPC network `sg-test-clara` |
| `compute_subnetwork` | Manages the subnet `subnet-01-clara` within the VPC network |

## Resources

| Resource | Type | Description |
|----------|------|-------------|
| `google_compute_network.this` | `google_compute_network` | Custom-mode VPC network with GLOBAL routing |
| `google_compute_subnetwork.this` | `google_compute_subnetwork` | Primary subnet with Private Google Access and secondary IP ranges |

## Variables Reference

| Variable | Type | Default | Description |
|----------|------|---------|-------------|
| `region` | `string` | — | The GCP region for this stack |
| `compute_network_name` | `string` | — | Name of the VPC network |
| `compute_network_auto_create_subnetworks` | `bool` | — | Whether to auto-create subnetworks |
| `compute_network_routing_mode` | `string` | — | Network-wide routing mode (REGIONAL or GLOBAL) |
| `compute_subnetwork_name` | `string` | — | Name of the subnetwork |
| `compute_subnetwork_ip_cidr_range` | `string` | — | The primary IP CIDR range for the subnetwork |
| `compute_subnetwork_region` | `string` | — | The GCP region for the subnetwork |
| `compute_subnetwork_private_ip_google_access` | `bool` | — | Whether VMs without external IPs can access Google APIs via Private Google Access |
| `compute_subnetwork_purpose` | `string` | — | The purpose of the subnetwork |
| `compute_subnetwork_secondary_ip_range` | `list(object)` | `[]` | Secondary IP ranges for the subnetwork |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `compute_network_self_link` | The URI of the VPC network |
| `compute_network_id` | The ID of the VPC network |
| `compute_subnetwork_id` | The ID of the subnetwork |
| `compute_subnetwork_self_link` | The URI of the subnetwork |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import existing resources

```sh
./imports.sh terraform
# or for OpenTofu:
./imports.sh tofu
```

### 3. Plan

```sh
terraform plan -var-file environments/sg.tfvars
```

### 4. Apply

```sh
terraform apply -var-file environments/sg.tfvars
```