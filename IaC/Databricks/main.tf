# Configure Azure provider
provider "azurerm" {
  features {}
}

# Configure Databricks provider
provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}

# Create an Azure Resource Group
resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

# Create an Azure Databricks workspace
resource "azurerm_databricks_workspace" "this" {
  name                        = var.workspace_name
  resource_group_name         = azurerm_resource_group.this.name
  location                    = azurerm_resource_group.this.location
  sku                         = var.workspace_sku
  managed_resource_group_name = var.managed_resource_group_name
}

# Fetch the latest Spark version with long term support
data "databricks_spark_version" "latest_lts" {
  long_term_support = true
}

# Fetch the smallest available node type with local disk
data "databricks_node_type" "smallest" {
  local_disk = true
}

# Create a Databricks cluster
resource "databricks_cluster" "this" {
  cluster_name            = var.cluster_name
  spark_version           = data.databricks_spark_version.latest_lts.id
  node_type_id            = data.databricks_node_type.smallest.id
  autotermination_minutes = var.autotermination_minutes

  # Configure autoscaling
  autoscale {
    min_workers = var.min_workers
    max_workers = var.max_workers
  }

  # Azure specific settings
  azure_attributes {
    availability       = var.availability
    first_on_demand    = var.first_on_demand
    spot_bid_max_price = var.spot_bid_max_price
  }

  # Mount an NFS storage
  cluster_mount_info {
    network_filesystem_info {
      server_address = var.server_address
      mount_options  = var.mount_options
    }
    remote_mount_dir_path = var.remote_mount_dir_path
    local_mount_dir_path  = var.local_mount_dir_path
  }

  # Configure allowed workloads
  workload_type {
    clients {
      jobs      = var.allow_jobs
      notebooks = var.allow_notebooks
    }
  }
}
