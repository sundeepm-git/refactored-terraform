# ==============================================================================
# FILE: terraform.tf
# ==============================================================================
# DESCRIPTION:
#   Terraform backend and required provider version constraints.
#
# GENERATED:
#   Date: 2026-02-06 21:18:40
#   By: sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-06 21:18:40 | sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================
terraform {
  backend "local" {}

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"

    }
  }
}

