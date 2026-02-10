# Basic Infrastructure Example

This example demonstrates how to use the resource group module to create a basic Azure infrastructure setup with a virtual network and subnet.

## Resources Created

- Resource Group
- Virtual Network
- Subnet

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Review the plan:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

4. Destroy the resources when done:
   ```bash
   terraform destroy
   ```

## Requirements

- Terraform >= 1.0
- Azure subscription
- Azure CLI authenticated or Service Principal configured
