# Azure Resource Group Module

This module creates an Azure Resource Group.

## Usage

```hcl
module "resource_group" {
  source   = "../../modules/resource_group"
  name     = "my-resource-group"
  location = "East US"
  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | The name of the resource group | `string` | n/a | yes |
| location | The Azure region where the resource group will be created | `string` | n/a | yes |
| tags | A map of tags to apply to the resource group | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | The name of the resource group |
| id | The ID of the resource group |
| location | The location of the resource group |
