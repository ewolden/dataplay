# Create an Azure Databricks workspace
resource "azurerm_databricks_workspace" "this" {
  name                        = var.workspace_name
  resource_group_name         = var.resource_group_name
  location                    = var.location
  sku                         = var.workspace_sku
  managed_resource_group_name = var.managed_resource_group_name
}
