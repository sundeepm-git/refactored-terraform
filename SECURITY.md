# Security Policy

## Supported Versions

This project is actively maintained. Security updates will be provided for the latest version.

## Reporting a Vulnerability

If you discover a security vulnerability in this project, please report it by:

1. **DO NOT** open a public issue
2. Email the maintainers privately (create an issue with label "security" and mark as private if available)
3. Provide detailed information about the vulnerability
4. Allow reasonable time for a fix before public disclosure

## Security Best Practices

### Terraform State Security

1. **Remote State Storage**: Always use remote state with encryption enabled
   ```hcl
   terraform {
     backend "azurerm" {
       resource_group_name  = "terraform-state-rg"
       storage_account_name = "tfstatestore"
       container_name       = "tfstate"
       key                  = "terraform.tfstate"
       use_oidc            = true  # Use OIDC for authentication
     }
   }
   ```

2. **State File Protection**: Never commit state files to version control
   - State files contain sensitive data
   - Already excluded in `.gitignore`

### Secrets Management

1. **Never Hardcode Secrets**: Don't put passwords, keys, or tokens in code
2. **Use Azure Key Vault**: Store secrets in Azure Key Vault
   ```hcl
   data "azurerm_key_vault_secret" "example" {
     name         = "secret-name"
     key_vault_id = azurerm_key_vault.example.id
   }
   ```

3. **Managed Identities**: Use managed identities instead of service principals when possible
4. **Variable Files**: Never commit `terraform.tfvars` with sensitive data

### Azure Provider Authentication

1. **Avoid Access Keys**: Use OIDC or Managed Identity for authentication
2. **Service Principal**: If using service principal, use short-lived tokens
3. **Environment Variables**: Store credentials in environment variables, not in code

### Access Control

1. **Least Privilege**: Grant minimal permissions required
2. **RBAC**: Use Azure RBAC for access management
3. **Resource Locks**: Apply resource locks to prevent accidental deletion
4. **Network Security**: Use Network Security Groups and Private Endpoints

### Code Security

1. **Provider Versions**: Pin provider versions to prevent supply chain attacks
   ```hcl
   required_providers {
     azurerm = {
       source  = "hashicorp/azurerm"
       version = "~> 3.0"  # Pin to major version
     }
   }
   ```

2. **Module Sources**: Use verified module sources
3. **Code Review**: Always review Terraform plans before applying
4. **Sensitive Outputs**: Mark sensitive outputs with `sensitive = true` or avoid outputting them

### Resource Protection

1. **Deletion Protection**: Enable deletion protection for critical resources
   ```hcl
   provider "azurerm" {
     features {
       resource_group {
         prevent_deletion_if_contains_resources = true
       }
     }
   }
   ```

2. **Backup**: Enable backup for databases and storage accounts
3. **Encryption**: Enable encryption at rest and in transit
4. **Monitoring**: Enable Azure Security Center and monitoring

### CI/CD Security

1. **Secure Pipelines**: Use OIDC authentication in CI/CD
2. **Environment Separation**: Separate dev, staging, and production
3. **Plan Review**: Require manual approval for production deployments
4. **Audit Logs**: Enable and monitor audit logs

## Security Checklist

Before deploying to production:

- [ ] Remote state storage is configured with encryption
- [ ] No secrets are hardcoded in configurations
- [ ] Sensitive values use Azure Key Vault
- [ ] Provider versions are pinned
- [ ] RBAC is properly configured
- [ ] Network security rules are in place
- [ ] Encryption is enabled for data at rest
- [ ] Encryption is enabled for data in transit
- [ ] Resource locks are applied to critical resources
- [ ] Backup is configured for stateful resources
- [ ] Monitoring and alerting are enabled
- [ ] Security Center recommendations are reviewed
- [ ] CI/CD uses secure authentication (OIDC)
- [ ] Terraform plan is reviewed before apply

## Compliance

This project should be used in compliance with:

- Azure Security Benchmark
- CIS Azure Foundations Benchmark
- Relevant regulatory requirements (GDPR, HIPAA, etc.)

## Updates

Security best practices are regularly updated. Check back frequently for new recommendations.

## Resources

- [Azure Security Best Practices](https://docs.microsoft.com/en-us/azure/security/fundamentals/best-practices-and-patterns)
- [Terraform Security Best Practices](https://www.terraform.io/docs/cloud/guides/recommended-practices/security.html)
- [Azure Key Vault Documentation](https://docs.microsoft.com/en-us/azure/key-vault/)
- [Azure RBAC Documentation](https://docs.microsoft.com/en-us/azure/role-based-access-control/)
