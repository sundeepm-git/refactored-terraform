provider "azurerm" {
  features {
  }
  use_oidc                        = false
  resource_provider_registrations = "none"
  subscription_id                 = "d0f1884d-1f98-4bf1-9e15-e2986fc1bca2"
  environment                     = "public"
  use_msi                         = false
  use_cli                         = true
}
