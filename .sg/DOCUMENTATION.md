# jovm-001-compute-stack

## Description

Google Compute Engine instance jovm-001 with its boot disk and default subnetwork in europe-north1.

This stack manages the full lifecycle of a GCE VM including its persistent boot disk, the VPC subnetwork it resides in, and the compute instance itself.

## Module Overview

| Module | Description |
|--------|-------------|
| `compute_disk` | Manages the persistent boot disk for jovm-001 |
| `compute_subnetwork` | Manages the default subnetwork in europe-north1 |
| `compute_instance` | Manages the jovm-001 compute instance with boot disk and network interface |

## Variables Reference

| Variable | Type | Description | Default |
|----------|------|-------------|---------|
| `region` | `string` | GCP region for the stack | — |
| `disk_name` | `string` | Name of the compute disk | — |
| `disk_size` | `number` | Size of the disk in GB | — |
| `disk_type` | `string` | Disk type (e.g. pd-balanced) | — |
| `disk_image` | `string` | Source image URL for the disk | — |
| `disk_zone` | `string` | Zone where the disk resides | — |
| `subnetwork_name` | `string` | Name of the subnetwork | — |
| `subnetwork_network` | `string` | The network this subnet belongs to | — |
| `subnetwork_ip_cidr_range` | `string` | IP CIDR range for the subnetwork | — |
| `subnetwork_region` | `string` | GCP region for the subnetwork | — |
| `subnetwork_private_ip_google_access` | `bool` | Whether VMs can access Google APIs without external IPs | — |
| `subnetwork_purpose` | `string` | The purpose of the subnetwork | — |
| `instance_name` | `string` | Name of the compute instance | — |
| `instance_machine_type` | `string` | Machine type for the instance | — |
| `instance_zone` | `string` | Zone where the instance is created | — |
| `instance_can_ip_forward` | `bool` | Whether to allow IP forwarding | — |
| `instance_deletion_protection` | `bool` | Whether deletion protection is enabled | — |
| `instance_desired_status` | `string` | Desired status of the instance | — |
| `instance_service_account_email` | `string` | Service account email to attach to the instance | — |
| `instance_service_account_scopes` | `list(string)` | List of service account scopes | — |
| `instance_scheduling_automatic_restart` | `bool` | Whether the instance should be automatically restarted | — |
| `instance_scheduling_on_host_maintenance` | `string` | Maintenance behavior (MIGRATE or TERMINATE) | — |
| `instance_scheduling_provisioning_model` | `string` | Provisioning model (STANDARD or SPOT) | — |
| `instance_shielded_enable_vtpm` | `bool` | Whether vTPM is enabled | — |
| `instance_shielded_enable_integrity_monitoring` | `bool` | Whether integrity monitoring is enabled | — |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `compute_disk_self_link` | Self link of the compute disk |
| `compute_subnetwork_self_link` | Self link of the compute subnetwork |
| `compute_instance_self_link` | Self link of the compute instance |
| `compute_instance_id` | Instance ID of the compute instance |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import existing resources

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

## Cross-Module Wiring

- `compute_instance.boot_disk_source` ← `module.compute_disk.self_link`
- `compute_instance.subnetwork` ← `module.compute_subnetwork.self_link`