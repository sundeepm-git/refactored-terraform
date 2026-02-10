# Azure Terraform Infrastructure

This repository contains Terraform configurations for managing Azure infrastructure as code. It provides a modular and reusable structure for deploying Azure resources.

## 📋 Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Repository Structure](#repository-structure)
- [Quick Start](#quick-start)
- [Usage](#usage)
- [Modules](#modules)
- [Examples](#examples)
- [Best Practices](#best-practices)
- [Contributing](#contributing)

## ✨ Features

- **Modular Design**: Reusable Terraform modules for common Azure resources
- **Example Configurations**: Ready-to-use examples for quick deployment
- **Best Practices**: Following Azure and Terraform best practices
- **Version Controlled**: All infrastructure changes tracked in Git
- **Parameterized**: Flexible configurations using variables

## 📦 Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (>= 1.0)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (>= 2.30)
- An active Azure subscription

### Authentication

Authenticate with Azure using one of these methods:

#### Using Azure CLI (Recommended for local development)
```bash
az login
az account set --subscription "YOUR_SUBSCRIPTION_ID"
```

#### Using Service Principal (Recommended for CI/CD)
```bash
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
export ARM_CLIENT_SECRET="your-secret"
export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
```

## 📁 Repository Structure

```
.
├── modules/              # Reusable Terraform modules
│   └── resource_group/   # Resource group module
├── examples/             # Example configurations
│   └── basic_infrastructure/  # Basic infrastructure example
├── environments/         # Environment-specific configurations (dev, staging, prod)
├── main.tf              # Root module main configuration
├── variables.tf         # Root module input variables
├── outputs.tf           # Root module outputs
├── provider.tf          # Azure provider configuration
├── versions.tf          # Terraform and provider version constraints
└── terraform.tfvars.example  # Example variable values
```

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/sundeepm-git/refactored-terraform.git
   cd refactored-terraform
   ```

2. **Configure variables**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   # Edit terraform.tfvars with your values
   ```

3. **Initialize Terraform**
   ```bash
   terraform init
   ```

4. **Review the plan**
   ```bash
   terraform plan
   ```

5. **Apply the configuration**
   ```bash
   terraform apply
   ```

## 💡 Usage

### Using the Root Module

The root module creates a basic Azure infrastructure with:
- Resource Group
- Virtual Network
- Subnet
- Storage Account

```bash
# Initialize
terraform init

# Plan
terraform plan -var="resource_group_name=my-rg" -var="environment=dev"

# Apply
terraform apply -var="resource_group_name=my-rg" -var="environment=dev"

# Destroy
terraform destroy
```

### Using Modules

You can use individual modules in your own Terraform configurations:

```hcl
module "resource_group" {
  source   = "./modules/resource_group"
  name     = "my-resource-group"
  location = "East US"
  tags = {
    Environment = "Production"
    ManagedBy   = "Terraform"
  }
}
```

## 🧩 Modules

### Resource Group Module

Creates an Azure Resource Group with customizable tags.

**Location**: `modules/resource_group`

**Usage**: See [module documentation](modules/resource_group/README.md)

## 📚 Examples

### Basic Infrastructure

A complete example showing how to deploy a basic Azure infrastructure setup.

**Location**: `examples/basic_infrastructure`

**Includes**:
- Resource Group (using module)
- Virtual Network
- Subnet

**Usage**: See [example documentation](examples/basic_infrastructure/README.md)

## 🔄 CI/CD Integration

This repository includes a GitHub Actions workflow for automated Terraform validation and security scanning.

**Workflow**: `.github/workflows/terraform-ci.yml`

The workflow:
- Validates Terraform formatting
- Runs `terraform init` and `terraform validate`
- Generates Terraform plans for pull requests
- Performs security scanning with Trivy

To use the workflow, configure these GitHub secrets:
- `AZURE_CLIENT_ID`
- `AZURE_SUBSCRIPTION_ID`
- `AZURE_TENANT_ID`

## 🔒 Best Practices

1. **State Management**: Use remote state storage (Azure Storage Account) for team collaboration
2. **Variable Files**: Never commit `terraform.tfvars` with sensitive data
3. **Naming Conventions**: Follow Azure naming conventions for resources
4. **Tagging**: Always tag resources for better organization and cost tracking
5. **Modules**: Use modules for reusable infrastructure patterns
6. **Version Pinning**: Pin provider versions to avoid breaking changes (commit `.terraform.lock.hcl`)
7. **Plan Review**: Always review `terraform plan` output before applying
8. **Secrets Management**: Never output sensitive values like access keys. Use Azure Key Vault or managed identities for accessing storage accounts and other resources
9. **Resource Protection**: Enable deletion protection for production resource groups

For more security best practices, see [SECURITY.md](SECURITY.md).

## 🤝 Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Guidelines

- Follow Terraform best practices
- Add documentation for new modules
- Include examples for new features
- Test your changes before submitting

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- [Terraform Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Azure Architecture Best Practices](https://docs.microsoft.com/en-us/azure/architecture/)

## 📧 Contact

For questions or support, please open an issue in the repository.