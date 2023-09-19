# Outputs file for the Resource Group module
# Defines any outputs related to the Resource Group created.

# Output the Resource Group name
output "resource_group_name" {
  value       = azurerm_resource_group.this[0].name
  description = "The name of the resource group created or referenced"
  depends_on  = [azurerm_resource_group.this]
}
