# kms-crypto-key-version-clara-gcp-bucket

## Description

Manages a Google KMS CryptoKeyVersion for the clara-gcp-bucket crypto key.

## Module Overview

| Module | Description |
|--------|-------------|
| `kms_crypto_key_version` | Manages the Google KMS CryptoKeyVersion associated with the clara-gcp-bucket crypto key |

## Variables Reference

| Name | Type | Description |
|------|------|-------------|
| `region` | `string` | The region for the provider |
| `crypto_key` | `string` | The full resource name of the cryptoKey associated with the CryptoKeyVersion |
| `state` | `string` | The current state of the CryptoKeyVersion (ENABLED or DISABLED) |

## Outputs Reference

| Name | Description |
|------|-------------|
| `kms_crypto_key_version_id` | The identifier of the KMS CryptoKeyVersion |
| `kms_crypto_key_version_name` | The resource name of the KMS CryptoKeyVersion |

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