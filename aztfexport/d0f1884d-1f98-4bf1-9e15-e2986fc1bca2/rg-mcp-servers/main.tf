# ==============================================================================
# FILE: main.tf
# ==============================================================================
# DESCRIPTION:
#   Main Terraform configuration containing all Azure resource definitions exported from the resource group.
#
# GENERATED:
#   Date: 2026-02-05 13:20:18
#   By: sunsu (sun.study29@gmail.com)
#   Tool: Azure to Terraform Export (aztfexport)
#
# MODIFICATION HISTORY:
#   Date       | Modified By | Description
#   -----------|-------------|--------------------------------------------
#   2026-02-05 13:20:18 | sunsu (sun.study29@gmail.com) | Initial export from Azure
#
# NOTES:
#   - This file was automatically generated from existing Azure resources
#   - Review and modify as needed before applying to production
#   - Sensitive values may need to be parameterized
# ==============================================================================
resource "azurerm_resource_group" "res-0" {
  location = "eastus"
  name     = "rg-mcp-servers"
}
resource "azurerm_container_app" "res-1" {
  container_app_environment_id = azurerm_container_app_environment.res-2.id
  max_inactive_revisions       = 100
  name                         = "aztf-mcp-app"
  resource_group_name          = azurerm_resource_group.res-0.name
  revision_mode                = "Single"
  workload_profile_name        = "Consumption"
  identity {
    type = "SystemAssigned"
  }
  ingress {
    external_enabled = true
    target_port      = 8080
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
  registry {
    password_secret_name = "aztfmcpacrazurecrio-aztfmcpacr"
    server               = "aztfmcpacr.azurecr.io"
    username             = "aztfmcpacr"
  }
  secret {
    name  = "aztfmcpacrazurecrio-aztfmcpacr"
    value = "E8kXHYXQQI8HAMCjkhmkAI7m27c0VAQoKuxOmaouEriY3q8uJADhJQQJ99CBAC1i4TkEqg7NAAACAZCRgjcy"
  }
  template {
    max_replicas = 3
    min_replicas = 1
    container {
      cpu    = 1
      image  = "aztfmcpacr.azurecr.io/aztf-mcp-server:v1.1"
      memory = "2Gi"
      name   = "aztf-mcp-app"
      env {
        name  = "PORT"
        value = "8080"
      }
      env {
        name  = "LOG_LEVEL"
        value = "info"
      }
      env {
        name  = "NODE_ENV"
        value = "production"
      }
      env {
        name  = "storageAccount"
        value = "samcpstorage"
      }
    }
  }
}
resource "azurerm_container_app_environment" "res-2" {
  location                   = "centralus"
  log_analytics_workspace_id = azurerm_log_analytics_workspace.res-9.id
  name                       = "mcp-aca-env"
  resource_group_name        = azurerm_resource_group.res-0.name
  workload_profile {
    name                  = "Consumption"
    workload_profile_type = "Consumption"
  }
}
resource "azurerm_container_registry" "res-3" {
  admin_enabled       = true
  location            = "centralus"
  name                = "aztfmcpacr"
  resource_group_name = azurerm_resource_group.res-0.name
  sku                 = "Basic"
}
resource "azurerm_container_registry_scope_map" "res-4" {
  actions                 = ["repositories/*/metadata/read", "repositories/*/metadata/write", "repositories/*/content/read", "repositories/*/content/write", "repositories/*/content/delete"]
  container_registry_name = "aztfmcpacr"
  description             = "Can perform all read, write and delete operations on the registry"
  name                    = "_repositories_admin"
  resource_group_name     = azurerm_resource_group.res-0.name
  depends_on = [
    azurerm_container_registry.res-3,
  ]
}
resource "azurerm_container_registry_scope_map" "res-5" {
  actions                 = ["repositories/*/content/read"]
  container_registry_name = "aztfmcpacr"
  description             = "Can pull any repository of the registry"
  name                    = "_repositories_pull"
  resource_group_name     = azurerm_resource_group.res-0.name
  depends_on = [
    azurerm_container_registry.res-3,
  ]
}
resource "azurerm_container_registry_scope_map" "res-6" {
  actions                 = ["repositories/*/content/read", "repositories/*/metadata/read"]
  container_registry_name = "aztfmcpacr"
  description             = "Can perform all read operations on the registry"
  name                    = "_repositories_pull_metadata_read"
  resource_group_name     = azurerm_resource_group.res-0.name
  depends_on = [
    azurerm_container_registry.res-3,
  ]
}
resource "azurerm_container_registry_scope_map" "res-7" {
  actions                 = ["repositories/*/content/read", "repositories/*/content/write"]
  container_registry_name = "aztfmcpacr"
  description             = "Can push to any repository of the registry"
  name                    = "_repositories_push"
  resource_group_name     = azurerm_resource_group.res-0.name
  depends_on = [
    azurerm_container_registry.res-3,
  ]
}
resource "azurerm_container_registry_scope_map" "res-8" {
  actions                 = ["repositories/*/metadata/read", "repositories/*/metadata/write", "repositories/*/content/read", "repositories/*/content/write"]
  container_registry_name = "aztfmcpacr"
  description             = "Can perform all read and write operations on the registry"
  name                    = "_repositories_push_metadata_write"
  resource_group_name     = azurerm_resource_group.res-0.name
  depends_on = [
    azurerm_container_registry.res-3,
  ]
}
resource "azurerm_log_analytics_workspace" "res-9" {
  location            = "centralus"
  name                = "workspace-rgmcpserversIh7a"
  resource_group_name = azurerm_resource_group.res-0.name
}
resource "azurerm_storage_account" "res-684" {
  account_replication_type        = "LRS"
  account_tier                    = "Standard"
  allow_nested_items_to_be_public = false
  location                        = "eastus"
  name                            = "samcpstorage"
  resource_group_name             = azurerm_resource_group.res-0.name
}
resource "azurerm_storage_container" "res-686" {
  name               = "assessment-reports"
  storage_account_id = "/subscriptions/d0f1884d-1f98-4bf1-9e15-e2986fc1bca2/resourceGroups/rg-mcp-servers/providers/Microsoft.Storage/storageAccounts/samcpstorage"
  depends_on = [
    # One of azurerm_storage_account.res-684,azurerm_storage_account_queue_properties.res-690 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_storage_container" "res-687" {
  name               = "aztfexport"
  storage_account_id = "/subscriptions/d0f1884d-1f98-4bf1-9e15-e2986fc1bca2/resourceGroups/rg-mcp-servers/providers/Microsoft.Storage/storageAccounts/samcpstorage"
  depends_on = [
    # One of azurerm_storage_account.res-684,azurerm_storage_account_queue_properties.res-690 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_storage_container" "res-688" {
  name               = "code-refactored"
  storage_account_id = "/subscriptions/d0f1884d-1f98-4bf1-9e15-e2986fc1bca2/resourceGroups/rg-mcp-servers/providers/Microsoft.Storage/storageAccounts/samcpstorage"
  depends_on = [
    # One of azurerm_storage_account.res-684,azurerm_storage_account_queue_properties.res-690 (can't auto-resolve as their ids are identical)
  ]
}
resource "azurerm_storage_account_queue_properties" "res-690" {
  storage_account_id = azurerm_storage_account.res-684.id
  hour_metrics {
    version = "1.0"
  }
  logging {
    delete  = false
    read    = false
    version = "1.0"
    write   = false
  }
  minute_metrics {
    version = "1.0"
  }
}

