# ==============================================================================
# FILE: main.tf
# ==============================================================================
# DESCRIPTION:
#   Main Terraform configuration containing all Azure resource definitions exported from the resource group.
#
# GENERATED:
#   Date: 2026-02-06 21:18:43
#   By: sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-06 21:18:43 | sunsu (4a7f6b45-8322-4cfe-bd16-008afdcc1221) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================
resource "azurerm_storage_account" "res-0" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "eastus"
  name                     = "smstorageaccount0014"
  resource_group_name      = "rg-genai-infra-0014"
  tags = {
    created_by  = "terraform"
    environment = "dev"
    owner       = "sundeep maheshwari"
  }
}


resource "azurerm_key_vault" "res-0" {
  location                 = "eastus"
  name                     = "smkeyvault0014"
  purge_protection_enabled = true
  resource_group_name      = "rg-genai-infra-0014"
  sku_name                 = "standard"
  tags = {
    created_by  = "terraform"
    environment = "dev"
    owner       = "sundeep maheshwari"
  }
  tenant_id = "a0e1f124-d84e-4ef7-bf4b-926b60443fb9"
}
resource "azurerm_ai_foundry" "res-0" {
  key_vault_id        = data.azurerm_key_vault.smkeyvault0014.id
  location            = "eastus"
  name                = "sm-fdry-hub-dev-0014"
  resource_group_name = "rg-genai-infra-0014"
  storage_account_id  = "/subscriptions/d0f1884d-1f98-4bf1-9e15-e2986fc1bca2/resourceGroups/rg-genai-infra-0014/providers/Microsoft.Storage/storageAccounts/smstorageaccount0014"
  identity {
    type = "SystemAssigned"
  }
}
resource "azurerm_ai_foundry_project" "res-0" {
  ai_services_hub_id = "/subscriptions/d0f1884d-1f98-4bf1-9e15-e2986fc1bca2/resourceGroups/rg-genai-infra-0014/providers/Microsoft.MachineLearningServices/workspaces/sm-fdry-hub-dev-0014"
  location           = "eastus"
  name               = "sm-fdry-hub-project-dev-0014"
  identity {
    type = "SystemAssigned"
  }
}
resource "azurerm_ai_services" "res-0" {
  custom_subdomain_name = "fndry-new-interface-001-resource"
  location              = "eastus2"
  name                  = "fndry-new-interface-001-resource"
  resource_group_name   = "rg-genai-infra-0014"
  sku_name              = "S0"
  identity {
    type = "SystemAssigned"
  }
  network_acls {
    bypass         = ""
    default_action = "Allow"
  }
}
resource "azurerm_cognitive_account_project" "res-0" {
  cognitive_account_id = "/subscriptions/d0f1884d-1f98-4bf1-9e15-e2986fc1bca2/resourceGroups/rg-genai-infra-0014/providers/Microsoft.CognitiveServices/accounts/fndry-new-interface-001-resource"
  location             = "eastus2"
  name                 = "fndry-new-interface-001"
  identity {
    type = "SystemAssigned"
  }
}


