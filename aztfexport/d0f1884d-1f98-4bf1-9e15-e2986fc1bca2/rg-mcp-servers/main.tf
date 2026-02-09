# ==============================================================================
# FILE: main.tf
# ==============================================================================
# DESCRIPTION:
#   Main Terraform configuration containing all Azure resource definitions exported from the resource group.
#
# GENERATED:
#   Date: 2026-02-08 21:44:43
#   By: sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-08 21:44:43 | sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================
resource "azurerm_storage_account" "res-0" {
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  allow_nested_items_to_be_public = false
  location                        = "eastus"
  name                            = "samcpstorage"
  resource_group_name             = "rg-mcp-servers"
}


# Source: main.aztfexport.tf
resource "azurerm_container_app_environment" "res-0" {
  location                   = "centralus"
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.workspace_rgmcpserversIh7a.id
  name                       = "mcp-aca-env"
  resource_group_name        = "rg-mcp-servers"
  workload_profile {
    name                  = "Consumption"
    workload_profile_type = "Consumption"
  }
}


