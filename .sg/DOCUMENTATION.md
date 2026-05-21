# default-security-group

## Description

Default VPC security group with self-referencing ingress and all-traffic egress.

## Module Overview

| Module | Description |
|--------|-------------|
| `security_group` | Manages the default VPC security group |

## Resources

| Resource | Type | Description |
|----------|------|-------------|
| `aws_security_group.this` | `aws_security_group` | Default VPC security group |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | AWS region | `"ap-southeast-1"` |
| `name` | `string` | Name of the security group | `"default"` |
| `description` | `string` | Description of the security group | `"default VPC security group"` |
| `vpc_id` | `string` | VPC ID to associate the security group with | `"vpc-05fed6e9ac0f64a6e"` |

## Outputs Reference

| Name | Description |
|------|-------------|
| `security_group_id` | ID of the security group |
| `security_group_arn` | ARN of the security group |

## Usage Instructions

### 1. Initialize

```sh
tofu init
```

### 2. Import Existing Resources

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