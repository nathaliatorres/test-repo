# vpc-ap-southeast-1

## Description

Default VPC infrastructure in ap-southeast-1.

## Module Overview

| Module | Description |
|--------|-------------|
| `vpc` | Manages the AWS VPC and its core configuration |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | AWS region where resources will be managed | `"ap-southeast-1"` |
| `cidr_block` | `string` | The IPv4 CIDR block for the VPC | `"172.31.0.0/16"` |
| `instance_tenancy` | `string` | Tenancy option for instances launched into the VPC | `"default"` |

## Outputs Reference

| Name | Description |
|------|-------------|
| `vpc_id` | The ID of the VPC |

## Usage Instructions

### 1. Initialize

```sh
terraform init
```

### 2. Import existing resources

```sh
chmod +x imports.sh
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