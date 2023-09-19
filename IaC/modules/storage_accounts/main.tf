provider "azurerm" {
  features {}
}

# Storage account configuration
resource "azurerm_storage_account" "example" {
  # Name, resource group, and location for the storage account
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location

  # Storage account tier and replication type
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  
  # Enable Hierarchical Namespace
  is_hns_enabled           = var.is_hns_enabled
  
  # Enabling a System-Assigned Managed Identity
  identity {
    type = "SystemAssigned"
  }

}

# Create a storage container
resource "azurerm_storage_container" "example" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = var.container_access_type
}