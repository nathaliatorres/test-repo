# inv-scan-vertex-ai

## Description

Vertex AI model and endpoint infrastructure for inventory scanning.

## Module Overview

| Module | Description |
|--------|-------------|
| `vertex_ai_endpoint` | Manages the Vertex AI endpoint for inventory scanning |
| `vertex_ai_model` | Manages the Vertex AI model for inventory scanning |

## Variables Reference

| Name | Type | Description | Default |
|------|------|-------------|---------|
| `region` | `string` | The GCP region for all resources | — |
| `endpoint_name` | `string` | The resource name of the Vertex AI endpoint (numeric, no leading zeros, at most 10 digits) | — |
| `endpoint_display_name` | `string` | The display name of the Vertex AI endpoint | — |
| `endpoint_description` | `string` | The description of the Vertex AI endpoint | — |
| `endpoint_labels` | `map(string)` | Labels with user-defined metadata to organize the endpoint | `{}` |
| `model_display_name` | `string` | The display name of the Vertex AI model | — |
| `model_container_image_uri` | `string` | The URI of the container image to use for the Vertex AI model | — |

## Outputs Reference

| Name | Description |
|------|-------------|
| `endpoint_id` | The ID of the Vertex AI endpoint |
| `model_id` | The ID of the Vertex AI model |

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