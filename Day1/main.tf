provider "azurerm" {
  features {}
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-learning-azure"
  location = "SouthIndia"
}
