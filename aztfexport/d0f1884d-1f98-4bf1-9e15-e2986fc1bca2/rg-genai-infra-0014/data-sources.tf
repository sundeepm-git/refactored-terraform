# ==============================================================================
# FILE: data-sources.tf
# ==============================================================================
# DESCRIPTION:
#   Data sources for external Azure resources referenced by this configuration. These resources are managed outside this Terraform state and are referenced as read-only.
#
# GENERATED:
#   Date: 2026-02-06 21:18:35
#   By: sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-06 21:18:35 | sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================

# Reference existing Key Vault: smkeyvault0014
data "azurerm_key_vault" "smkeyvault0014" {
  name                = "smkeyvault0014"
  resource_group_name = "rg-genai-infra-0014"
}
