# vdesktop-network-stack

## Description

VDesktop VPC network with subnet and SSH firewall rule deployed in GCP region `europe-west3`.

## Stack Overview

This stack provisions the core networking components for the VDesktop environment:

| Module | Description |
|--------|-------------|
| `compute_network` | Manages the vdesktop VPC network (`vdesktop-vpc`) |
| `compute_subnetwork` | Manages the vdesktop subnet (`vdesktop-subnet`) within the VPC |
| `compute_firewall` | Manages the SSH allow firewall rule (`vdesktop-allow-ssh`) |

## Architecture

```
compute_network (vdesktop-vpc)
  └── compute_subnetwork (vdesktop-subnet, 10.20.0.0/24)
  └── compute_firewall (vdesktop-allow-ssh, TCP/22 INGRESS)
```

The subnetwork and firewall rule both reference the VPC network via its `self_link` output, wired through root module variables.

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | `string` | GCP region for the stack | `"europe-west3"` |
| `compute_network_name` | `string` | Name of the VPC network | `"vdesktop-vpc"` |
| `compute_network_auto_create_subnetworks` | `bool` | Whether to auto-create subnetworks | `false` |
| `compute_network_routing_mode` | `string` | Network-wide routing mode | `"REGIONAL"` |
| `compute_subnetwork_name` | `string` | Name of the subnetwork | `"vdesktop-subnet"` |
| `compute_subnetwork_ip_cidr_range` | `string` | IP CIDR range for the subnetwork | `"10.20.0.0/24"` |
| `compute_subnetwork_region` | `string` | GCP region for the subnetwork | `"europe-west3"` |
| `compute_subnetwork_private_ip_google_access` | `bool` | Private Google Access enabled | `true` |
| `compute_subnetwork_purpose` | `string` | Purpose of the subnetwork | `"PRIVATE"` |
| `compute_firewall_name` | `string` | Name of the firewall rule | `"vdesktop-allow-ssh"` |
| `compute_firewall_direction` | `string` | Direction of traffic | `"INGRESS"` |
| `compute_firewall_disabled` | `bool` | Whether the firewall rule is disabled | `false` |
| `compute_firewall_priority` | `number` | Priority for the firewall rule | `1000` |
| `compute_firewall_source_ranges` | `list(string)` | Source IP CIDR ranges | `["0.0.0.0/0"]` |
| `compute_firewall_target_tags` | `list(string)` | Target instance tags | `["vdesktop-vm"]` |
| `compute_firewall_allow_protocol` | `string` | IP protocol for the allow rule | `"tcp"` |
| `compute_firewall_allow_ports` | `list(string)` | Ports for the allow rule | `["22"]` |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `compute_network_self_link` | The URI of the VPC network |
| `compute_network_name` | The name of the VPC network |
| `compute_subnetwork_self_link` | The URI of the subnetwork |
| `compute_subnetwork_name` | The name of the subnetwork |
| `compute_firewall_self_link` | The URI of the firewall rule |
| `compute_firewall_name` | The name of the firewall rule |

## Usage Instructions

### Prerequisites

- OpenTofu >= 1.0
- GCP credentials configured (e.g., `GOOGLE_APPLICATION_CREDENTIALS` or `gcloud auth application-default login`)
- GCP project set in provider or via `GOOGLE_PROJECT` environment variable

### 1. Initialize

```sh
tofu init
```

### 2. Import Existing Resources

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