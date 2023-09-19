# Output the Databricks Workspace URL
output "workspace_url" {
  value = azurerm_databricks_workspace.this.workspace_url
}