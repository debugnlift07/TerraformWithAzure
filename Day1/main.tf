provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

// careate resoure gorup
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
