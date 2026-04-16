# private-runner-ec2-stack

EC2 instance with associated key pair and primary network interface for private runner workloads.

## Stack Overview

This stack provisions and manages the following AWS resources in `eu-central-1`:

| Module | Description |
|--------|-------------|
| `key_pair` | Manages the taher-private-runner SSH key pair |
| `instance` | Manages the private runner EC2 instance |
| `network_interface` | Manages the primary ENI attached to the private runner EC2 instance |

## Module Details

### key_pair (`./modules/key_pair`)
Creates and manages an `aws_key_pair` resource for SSH access to the EC2 instance.

### instance (`./modules/instance`)
Creates and manages an `aws_instance` resource with full configuration including metadata options, CPU options, enclave options, and capacity reservation settings.

### network_interface (`./modules/network_interface`)
Creates and manages an `aws_network_interface` resource attached to the EC2 instance, with a fixed private IP and security group assignment.

## Variables Reference

| Variable | Type | Description |
|----------|------|-------------|
| `region` | string | AWS region where resources are managed |
| `key_pair_key_name` | string | Name of the SSH key pair |
| `key_pair_public_key` | string | Public key material for the key pair (sensitive) |
| `shared_security_group_id` | string | Security group ID shared between the instance and network interface |
| `network_interface_subnet_id` | string | Subnet ID in which the ENI is created |
| `network_interface_private_ip_address` | string | Primary private IP address assigned to the ENI |
| `network_interface_source_dest_check` | bool | Whether source/destination checking is enabled on the ENI |
| `network_interface_device_index` | number | Device index for the ENI attachment |
| `instance_ami_id` | string | AMI ID to use for the instance |
| `instance_instance_type` | string | EC2 instance type |
| `instance_availability_zone` | string | Availability zone for the instance |
| `instance_subnet_id` | string | Subnet ID in which to launch the instance |
| `instance_source_dest_check` | bool | Whether source/destination checking is enabled on the instance |
| `instance_ebs_optimized` | bool | Whether the instance is EBS-optimized |
| `instance_monitoring` | bool | Whether detailed monitoring is enabled |
| `instance_tenancy` | string | Tenancy of the instance |
| `instance_capacity_reservation_preference` | string | Capacity reservation preference for the instance |
| `instance_metadata_http_endpoint` | string | Whether the metadata service HTTP endpoint is enabled |
| `instance_metadata_http_protocol_ipv6` | string | Whether the IPv6 metadata endpoint is enabled |
| `instance_metadata_http_put_response_hop_limit` | number | HTTP PUT response hop limit for instance metadata requests |
| `instance_metadata_http_tokens` | string | Whether IMDSv2 tokens are required |
| `instance_metadata_instance_metadata_tags` | string | Whether instance metadata tags access is enabled |
| `instance_enclave_options_enabled` | bool | Whether Nitro Enclaves are enabled |
| `instance_cpu_core_count` | number | Number of CPU cores |
| `instance_cpu_threads_per_core` | number | Number of threads per CPU core |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `instance_id` | ID of the EC2 instance |
| `instance_private_ip` | Private IP address of the EC2 instance |
| `network_interface_id` | ID of the network interface |
| `key_pair_key_name` | Name of the key pair |

## Usage

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

## Notes

- The `key_pair_public_key` variable is sensitive. Set it via an environment variable or a secrets manager rather than committing the value to source control:
  ```sh
  export TF_VAR_key_pair_public_key="ssh-rsa AAAA..."
  ```
- The `network_interface` module depends on the `instance` module output (`instance_id`) for the ENI attachment. OpenTofu will automatically order the creation/import accordingly.
- Import the instance before the network interface to satisfy the dependency chain when running imports manually.