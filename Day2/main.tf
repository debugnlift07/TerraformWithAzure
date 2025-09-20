#Create a resore group 
#create a stroge account in that rg

#Configure the Azure provider
provider "azurerm"{
    features{}
}

# -------------------------------
# Create a Resource Group
# -------------------------------
resource "azurerm_resource_group" "rg" {
  name     = "rg-learning-azure"
  location = "SouthIndia"
}

# -------------------------------
# Create a Storage Account
# -------------------------------
resource "azurerm_storage_account" "rg" {
  name ="sgalearningazure"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

# -------------------------------
# Create a Storage Container
# -------------------------------
resource "azurerm_storage_container" "container" {
  name                  = "mycontainer"                         # Container name (lowercase)
  storage_account_name  = azurerm_storage_account.rg.name   # Reference the storage account dynamically
  container_access_type = "private"                              # Options: private, blob, or container
}