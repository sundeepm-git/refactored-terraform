# ==============================================================================
# FILE: provider.tf
# ==============================================================================
# DESCRIPTION:
#   Azure provider configuration and authentication settings for Terraform.
#
# GENERATED:
#   Date: 2026-02-06 22:37:59
#   By: sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-06 22:37:59 | sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================
provider "azurerm" {
  features {
  }
  resource_provider_registrations = "none"
  subscription_id                 = "d0f1884d-1f98-4bf1-9e15-e2986fc1bca2"
  environment                     = "public"
  use_msi                         = false
  use_cli                         = true
  use_oidc                        = false
}

