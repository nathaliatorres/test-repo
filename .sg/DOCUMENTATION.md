# vdesktop-infrastructure

## Description

Virtual desktop infrastructure with a GCE instance, boot disk, and subnetwork in europe-west3.

## Stack Overview

This stack provisions the following resources in GCP region `europe-west3`:

| Module | Description | Resource Type |
|--------|-------------|---------------|
| `compute_subnetwork` | Manages the vdesktop VPC subnetwork | `google_compute_subnetwork` |
| `compute_disk` | Manages the vdesktop boot disk | `google_compute_disk` |
| `compute_instance` | Manages the vdesktop GCE virtual machine instance | `google_compute_instance` |

## Architecture

```
vdesktop-vpc (existing network)
  └── vdesktop-subnet (10.20.0.0/24, europe-west3)
        └── vdesktop-vm (n2-standard-8, europe-west3-a)
              └── boot disk: vdesktop-vm (pd-balanced, 100GB)
```

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The GCP region for the stack | `"europe-west3"` |
| `zone` | `string` | The GCP zone for the stack | `"europe-west3-a"` |
| `subnetwork_name` | `string` | Name of the subnetwork | `"vdesktop-subnet"` |
| `subnetwork_network` | `string` | The network the subnetwork belongs to | `"vdesktop-vpc"` |
| `subnetwork_ip_cidr_range` | `string` | The IP CIDR range for the subnetwork | `"10.20.0.0/24"` |
| `subnetwork_purpose` | `string` | The purpose of the subnetwork | `"PRIVATE"` |
| `subnetwork_private_ip_google_access` | `bool` | Whether VMs without external IPs can access Google APIs | `true` |
| `disk_name` | `string` | Name of the boot disk | `"vdesktop-vm"` |
| `disk_type` | `string` | The disk type | `"pd-balanced"` |
| `disk_size` | `number` | Size of the disk in GB | `100` |
| `disk_image` | `string` | The source image URL | Ubuntu 24.04 LTS |
| `instance_name` | `string` | Name of the compute instance | `"vdesktop-vm"` |
| `instance_machine_type` | `string` | The machine type for the instance | `"n2-standard-8"` |
| `instance_can_ip_forward` | `bool` | Whether to allow IP forwarding | `false` |
| `instance_deletion_protection` | `bool` | Whether deletion protection is enabled | `false` |
| `instance_tags` | `list(string)` | Network tags to attach to the instance | `["vdesktop-vm"]` |
| `instance_labels` | `map(string)` | Labels to assign to the instance | see tfvars |
| `instance_metadata` | `map(string)` | Metadata key/value pairs for the instance | see tfvars |
| `instance_service_account_email` | `string` | The service account email | compute default SA |
| `instance_service_account_scopes` | `list(string)` | The list of service account scopes | cloud-platform |
| `instance_scheduling_automatic_restart` | `bool` | Whether to auto-restart on host maintenance | `true` |
| `instance_scheduling_on_host_maintenance` | `string` | Maintenance behavior (MIGRATE or TERMINATE) | `"MIGRATE"` |
| `instance_scheduling_provisioning_model` | `string` | Provisioning model (STANDARD or SPOT) | `"STANDARD"` |
| `instance_enable_secure_boot` | `bool` | Whether Secure Boot is enabled | `true` |
| `instance_enable_vtpm` | `bool` | Whether vTPM is enabled | `true` |
| `instance_enable_integrity_monitoring` | `bool` | Whether integrity monitoring is enabled | `true` |

## Outputs Reference

| Name | Description |
|------|-------------|
| `instance_self_link` | The self_link of the compute instance |
| `instance_id` | The ID of the compute instance |
| `disk_self_link` | The self_link of the boot disk |
| `subnetwork_self_link` | The self_link of the subnetwork |

## Usage

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

## Notes

- The boot disk (`vdesktop-vm`) is managed separately from the instance to allow independent lifecycle management.
- The instance uses Shielded VM features (Secure Boot, vTPM, Integrity Monitoring).
- Private Google Access is enabled on the subnetwork, allowing the VM to reach Google APIs without an external IP.
- The instance does not have an external IP address (no `access_config` block in `network_interface`).