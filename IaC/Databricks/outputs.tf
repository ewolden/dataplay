# Output the Databricks Workspace URL
output "workspace_url" {
  value = azurerm_databricks_workspace.this.workspace_url
}

# Output the name of the created Azure Resource Group
output "resource_group_name" {
  value = azurerm_resource_group.this.name
}
