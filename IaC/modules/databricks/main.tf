# Configure Azure provider
provider "azurerm" {
  features {}
}

data "template_file" "init_script" {
  template = file("${path.module}/mount-azure-datalake-gen2.sh")  # rename your script file appropriately

  vars = {
    storage_account_name = var.storage_account_name
    filesystem_name      = var.filesystem_name  
    mount_name           = var.mount_name  
    scope_name           = var.scope_name  
    key_client_id        = var.key_client_id  
    key_client_secret    = var.key_client_secret  
  }
}

# Configure Databricks provider
provider "databricks" {
  azure_workspace_resource_id = azurerm_databricks_workspace.this.id
}

# Create an Azure Databricks workspace
resource "azurerm_databricks_workspace" "this" {
  name                        = var.workspace_name
  resource_group_name         = var.resource_group_name
  location                    = var.location
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

  // Init script to mount Azure Blob Storage
  init_scripts {
    dbfs = {
      destination = "dbfs:/databricks/init-scripts/mount-azure-datalake-gen2.sh"
    }
    source = "mount-azure-datalake-gen2.sh"
  }

  # Configure allowed workloads
  workload_type {
    clients {
      jobs      = var.allow_jobs
      notebooks = var.allow_notebooks
    }
  }
}
