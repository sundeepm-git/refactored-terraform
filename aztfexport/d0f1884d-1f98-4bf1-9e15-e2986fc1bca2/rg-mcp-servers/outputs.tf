# ==============================================================================
# FILE: outputs.tf
# ==============================================================================
# DESCRIPTION:
#   Output value definitions to expose resource attributes after deployment.
#
# GENERATED:
#   Date: 2026-02-09 22:49:35
#   By: sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-09 22:49:35 | sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================
# Outputs
# Define outputs for important resource attributes

output "resource_group_name" {
  description = "Name of the resource group"
  value       = var.resource_group_name
}

output "location" {
  description = "Azure region"
  value       = var.location
}

# Add specific resource outputs as needed
# Example:
# output "resource_id" {
#   description = "ID of the resource"
#   value       = azurerm_resource.example.id
# }

