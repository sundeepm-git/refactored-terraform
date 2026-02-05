# ==============================================================================
# FILE: terraform.tf
# ==============================================================================
# DESCRIPTION:
#   Terraform backend and required provider version constraints.
#
# GENERATED:
#   Date: 2026-02-05 13:20:20
#   By: sunsu (sun.study29@gmail.com)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-05 13:20:20 | sunsu (sun.study29@gmail.com) | Initial export from Azure
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

