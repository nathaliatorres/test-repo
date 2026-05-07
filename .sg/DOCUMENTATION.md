# sg-nonprod-infrastructure

## Description

Non-production VPC with network load balancer, target group, and EC2 instances in eu-central-1.

## Stack Overview

This stack provisions and manages the following AWS infrastructure in `eu-central-1`:

- **VPC** (`modules/vpc`): Non-production VPC with a `/24` CIDR block
- **Network Load Balancer** (`modules/lb`): Internal NLB (`platform-api-qa`) with cross-zone load balancing and S3 access logs
- **LB Target Group** (`modules/lb_target_group`): Target group (`platform-api-ecs-qa`) for IP-type targets on TCP port 8080 with HTTP health checks
- **EC2 Instances** (`modules/instance`): Seven EC2 instances of various types managed via a `for_each` map

## Module Overview

| Module | Description |
|--------|-------------|
| `vpc` | Manages the non-production VPC |
| `lb` | Manages the network load balancer for platform-api-qa |
| `lb_target_group` | Manages the LB target group for platform-api-ecs-qa |
| `instance` | Manages EC2 instances in the non-production VPC |

## Variables Reference

| Variable | Type | Description |
|----------|------|-------------|
| `region` | `string` | AWS region |
| `vpc_cidr_block` | `string` | The IPv4 CIDR block for the VPC |
| `vpc_instance_tenancy` | `string` | Tenancy option for instances launched into the VPC |
| `vpc_tags` | `map(string)` | Tags to assign to the VPC |
| `lb_name` | `string` | Name of the load balancer |
| `lb_internal` | `bool` | Whether the load balancer is internal |
| `lb_load_balancer_type` | `string` | Type of load balancer |
| `lb_subnets` | `list(string)` | List of subnet IDs to attach to the load balancer |
| `lb_ip_address_type` | `string` | Type of IP addresses used by the subnets |
| `lb_enable_cross_zone_load_balancing` | `bool` | Whether cross-zone load balancing is enabled |
| `lb_enable_deletion_protection` | `bool` | Whether deletion protection is enabled |
| `lb_dns_record_client_routing_policy` | `string` | How traffic is distributed among load balancer Availability Zones |
| `lb_access_logs` | `object` | Access logs configuration block |
| `lb_tags` | `map(string)` | Tags to assign to the load balancer |
| `tg_name` | `string` | Name of the target group |
| `tg_port` | `number` | Port on which targets receive traffic |
| `tg_protocol` | `string` | Protocol to use for routing traffic to the targets |
| `tg_target_type` | `string` | Type of target to register with the target group |
| `tg_ip_address_type` | `string` | Type of IP addresses used by the target group |
| `tg_health_check` | `object` | Health check configuration block |
| `tg_tags` | `map(string)` | Tags to assign to the target group |
| `instances` | `map(object)` | Map of EC2 instances to create |

## Outputs Reference

| Output | Description |
|--------|-------------|
| `vpc_id` | The ID of the VPC |
| `lb_arn` | ARN of the load balancer |
| `target_group_arn` | ARN of the target group |
| `instance_ids` | Map of instance keys to instance IDs |

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

## Notes

- All resources are imported from existing AWS infrastructure — `terraform plan` should show no changes after a successful import.
- The `instances` map uses string keys matching the blueprint; each key maps to a full EC2 instance configuration.
- Instances with an empty `iam_instance_profile` will have the attribute set to `null` to avoid drift.
- The `key_name` for `test_instance` is an empty string in the source data; ensure this matches the actual AWS state or update accordingly.