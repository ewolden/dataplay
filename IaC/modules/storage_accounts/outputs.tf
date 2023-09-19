# Output the Storage Account ID
output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

# Output the Storage Account primary access key
output "storage_account_primary_access_key" {
  value     = azurerm_storage_account.example.primary_access_key
  sensitive = true
}

# Output the System-Assigned Managed Identity Object ID
output "managed_identity_object_id" {
  value = azurerm_storage_account.example.identity[0].principal_id
}
