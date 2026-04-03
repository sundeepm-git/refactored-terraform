# Auto-generated via Enterprise Terraform Refactoring Engine

variable "stg_smstorageaccount0014_smstorageaccount0014_account_replication_type" {
  description = "Account replication type for the azurerm storage account smstorageaccount0014."
  type = string
  default = "LRS"
}


variable "stg_smstorageaccount0014_smstorageaccount0014_account_tier" {
  description = "Account tier for the azurerm storage account smstorageaccount0014."
  type = string
  default = "Standard"
}


variable "stg_smstorageaccount0014_smstorageaccount0014_cross_tenant_replication_enabled" {
  description = "Cross tenant replication enabled for the azurerm storage account smstorageaccount0014."
  type = bool
  default = false
}


variable "stg_smstorageaccount0014_smstorageaccount0014_name" {
  description = "Name for the azurerm storage account smstorageaccount0014."
  type = string
  default = "smstorageaccount0014"
}


variable "stg_smstorageaccount0014_smstorageaccount0014_resource_group_name" {
  description = "Resource group name for the azurerm storage account smstorageaccount0014."
  type = string
  default = "rg-genai-infra-0014"
}


variable "tags" {
  description = "Tags for all resources."
  type = map(string)
  default = {
    created_by = "terraform"
    environment = "dev"
    owner = "sundeep maheshwari"
  }
}


variable "kv_smkeyvault0014_smkeyvault0014_name" {
  description = "Name for the azurerm key vault smkeyvault0014."
  type = string
  sensitive = true
  default = "smkeyvault0014"
}


variable "kv_smkeyvault0014_smkeyvault0014_purge_protection_enabled" {
  description = "Purge protection enabled for the azurerm key vault smkeyvault0014."
  type = bool
  sensitive = true
  default = true
}


variable "kv_smkeyvault0014_smkeyvault0014_resource_group_name" {
  description = "Resource group name for the azurerm key vault smkeyvault0014."
  type = string
  sensitive = true
  default = "rg-genai-infra-0014"
}


variable "kv_smkeyvault0014_smkeyvault0014_sku_name" {
  description = "Sku name for the azurerm key vault smkeyvault0014."
  type = string
  sensitive = true
  default = "standard"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_custom_subdomain_name" {
  description = "Custom subdomain name for the azurerm cognitive account fndry new interface 001 resource."
  type = string
  default = "fndry-new-interface-001-resource"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_kind" {
  description = "Kind for the azurerm cognitive account fndry new interface 001 resource."
  type = string
  default = "AIServices"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_name" {
  description = "Name for the azurerm cognitive account fndry new interface 001 resource."
  type = string
  default = "fndry-new-interface-001-resource"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_resource_group_name" {
  description = "Resource group name for the azurerm cognitive account fndry new interface 001 resource."
  type = string
  default = "rg-genai-infra-0014"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_sku_name" {
  description = "Sku name for the azurerm cognitive account fndry new interface 001 resource."
  type = string
  default = "S0"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_identity0_type" {
  description = "Type for the azurerm cognitive account fndry new interface 001 resource identity0."
  type = string
  default = "SystemAssigned"
}


variable "azurerm_cognitive_account_fndry_new_interface_001_resource_fndry_new_interface_001_resource_network_acls0_default_action" {
  description = "Default action for the azurerm cognitive account fndry new interface 001 resource network acls0."
  type = string
  default = "Allow"
}


variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type = string
  default = "rg-genai-infra-0014"
}
