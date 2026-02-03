# Contributing to Azure Terraform Infrastructure

Thank you for your interest in contributing to this project! This document provides guidelines and best practices for contributing.

## 🚀 Getting Started

1. Fork the repository
2. Clone your fork locally
3. Create a new branch for your feature or bugfix
4. Make your changes
5. Test your changes
6. Submit a pull request

## 📋 Prerequisites

- Terraform >= 1.0
- Azure CLI >= 2.30
- An active Azure subscription for testing
- Basic understanding of Terraform and Azure

## 🔧 Development Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/refactored-terraform.git
   cd refactored-terraform
   ```

2. **Install dependencies**
   ```bash
   # Install Terraform
   # https://www.terraform.io/downloads.html

   # Install Azure CLI
   # https://docs.microsoft.com/en-us/cli/azure/install-azure-cli
   ```

3. **Authenticate with Azure**
   ```bash
   az login
   az account set --subscription "YOUR_SUBSCRIPTION_ID"
   ```

## 🎯 Contribution Guidelines

### Code Style

- Follow [Terraform Style Conventions](https://www.terraform.io/docs/language/syntax/style.html)
- Use consistent naming conventions
- Add comments for complex logic
- Keep modules focused and single-purpose

### Terraform Best Practices

1. **Module Structure**
   ```
   module_name/
   ├── main.tf          # Main resource definitions
   ├── variables.tf     # Input variables
   ├── outputs.tf       # Output values
   ├── versions.tf      # Version constraints (optional)
   └── README.md        # Module documentation
   ```

2. **Naming Conventions**
   - Use lowercase and hyphens for resource names
   - Prefix resources with their type (e.g., `rg-`, `vnet-`, `st-`)
   - Use descriptive names that indicate purpose

3. **Variable Definitions**
   - Always include descriptions
   - Specify types explicitly
   - Provide sensible defaults where appropriate
   - Document any constraints or validation rules

4. **Documentation**
   - Document all modules with README.md
   - Include usage examples
   - List all inputs and outputs in tables
   - Provide clear descriptions

### Testing

Before submitting a pull request:

1. **Format your code**
   ```bash
   terraform fmt -recursive
   ```

2. **Validate syntax**
   ```bash
   terraform validate
   ```

3. **Test in a sandbox environment**
   - Deploy your changes to a test Azure subscription
   - Verify resources are created correctly
   - Test cleanup (terraform destroy)

4. **Check for issues**
   ```bash
   # Initialize
   terraform init

   # Plan
   terraform plan

   # Apply (in test environment)
   terraform apply
   ```

### Commit Messages

- Use clear and descriptive commit messages
- Start with a verb (Add, Update, Fix, Remove, etc.)
- Keep the first line under 50 characters
- Add detailed description if needed

Examples:
```
Add network security group module
Update resource group module documentation
Fix subnet address prefix validation
```

### Pull Request Process

1. **Before submitting**
   - Ensure all tests pass
   - Update documentation
   - Run `terraform fmt`
   - Check for security issues

2. **PR Description**
   - Describe what changes you made and why
   - Reference any related issues
   - Include testing notes
   - Add screenshots if applicable

3. **Review Process**
   - Address reviewer feedback
   - Keep the PR focused and minimal
   - Be patient and respectful

## 📝 Module Development

When creating a new module:

1. **Create module structure**
   ```bash
   mkdir -p modules/my_module
   cd modules/my_module
   touch main.tf variables.tf outputs.tf README.md
   ```

2. **Define resources in main.tf**
   - Keep resources logically grouped
   - Use consistent naming

3. **Define variables in variables.tf**
   - Include descriptions
   - Specify types
   - Add validation when appropriate

4. **Define outputs in outputs.tf**
   - Output useful information
   - Include descriptions
   - Mark sensitive outputs

5. **Document in README.md**
   - Explain purpose and usage
   - List inputs and outputs
   - Provide examples

6. **Create an example**
   ```bash
   mkdir -p examples/my_module_example
   # Add example configuration
   ```

## 🐛 Reporting Bugs

When reporting bugs, please include:

- Terraform version
- Azure provider version
- Steps to reproduce
- Expected behavior
- Actual behavior
- Error messages or logs
- Relevant configuration files (sanitized)

## 💡 Feature Requests

When requesting features:

- Clearly describe the feature
- Explain the use case
- Provide examples if possible
- Consider backward compatibility

## 🔒 Security

- Never commit sensitive data (credentials, keys, etc.)
- Use `.gitignore` to exclude sensitive files
- Report security vulnerabilities privately
- Use Azure Key Vault for secrets in production

## 📚 Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Terraform Best Practices](https://www.terraform-best-practices.com/)
- [Azure Naming Conventions](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging)

## ❓ Questions

If you have questions:

- Check existing documentation
- Search closed issues
- Open a new issue with the "question" label
- Be specific and provide context

## 🙏 Thank You

Thank you for contributing to this project! Your efforts help make infrastructure as code better for everyone.
