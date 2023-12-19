# Include the Resource Group module
module "resource_group" {
  source              = "../../modules/resource_group"
  name                = module.resource_group.resource_group_name
  location            = var.location
}


# Include the Storage Account module
module "storage_account" {
  source = "../../modules/storage_accounts"
  
  resource_group_name       = module.resource_group.resource_group_name
  location                  = var.location
  storage_account_name      = var.storage_account_name
  storage_container_name    = var.storage_container_name
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  is_hns_enabled            = var.is_hns_enabled
  container_access_type     = var.container_access_type
}

# Include the Data Factory module to provision Azure Data Factory.
module "data_factory" {
  source = "../../modules/data_factory"

  # Parameters for the Data Factory module, loaded from tfvars.
  data_factory_name      = var.data_factory_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  github_account_name    = var.github_account_name
  github_branch_name     = var.github_branch_name
  github_git_url         = var.github_git_url
  github_repository_name = var.github_repository_name
  github_root_folder     = var.github_root_folder
}


# Import the Databricks module
module "databricks_setup" {
  source = "../../modules/databricks"  # The relative path to the module directory

  # Azure Resource Group settings
  resource_group_name        = module.resource_group.resource_group_name
  location                   = var.location

  # Databricks workspace settings
  workspace_name             = var.workspace_name
  workspace_sku              = var.workspace_sku
  managed_resource_group_name= var.managed_resource_group_name

  # Databricks cluster settings
  cluster_name               = var.cluster_name
  autotermination_minutes    = var.autotermination_minutes
  min_workers                = var.min_workers
  max_workers                = var.max_workers

  # Azure specific cluster settings
  availability               = var.availability
  first_on_demand            = var.first_on_demand
  spot_bid_max_price         = var.spot_bid_max_price

  storage_account_name = var.storage_account_name
  storage_container_name = var.storage_container_name

  # Workload settings
  allow_jobs                 = var.allow_jobs
  allow_notebooks            = var.allow_notebooks
}