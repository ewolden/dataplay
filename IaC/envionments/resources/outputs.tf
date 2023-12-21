# Output the name of the Resource Group created by the module
output "created_resource_group_name" {
  value = module.resource_group.resource_group_name
  description = "The name of the Resource Group created in 'dev' environment."
}

# Output the ID of the provisioned Data Factory.
output "data_factory_id" {
  value = module.data_factory.data_factory_id
  description = "The ID of the provisioned Azure Data Factory in dev environment."
}

# Output the Databricks Workspace URL
output "workspace_url" {
  value = module.databricks_setup.workspace_url
}