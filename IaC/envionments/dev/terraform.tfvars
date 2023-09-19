# tfvars file to define values for variables
storage_account_name = "eivindsdataplayst"
account_tier              = "Standard"
account_replication_type  = "LRS"
is_hns_enabled            = true
storage_container_name = "mycontainer"  # Name of the container in the Storage Account
container_access_type   = "private"

# Azure Resource Group settings
resource_group_name        = "Dataplay"  # Name of the Azure Resource Group. Must be unique within the Azure subscription.
location                   = "West Europe"  # Azure region where resources will be created, e.g., "East US", "West Europe", etc.

# Data Factory Information
data_factory_name   = "eivindsdataplay"    # Name for the Azure Data Factory

# GitHub Configuration
github_account_name    = "yourGithubAccount"    # GitHub account name to connect with Azure Data Factory
github_branch_name     = "main"                 # Branch name in the GitHub repository
github_git_url         = "https://github.com"   # GitHub URL, replace if you're using GitHub Enterprise
github_repository_name = "yourRepository"       # Repository name in GitHub
github_root_folder     = "/"                    # Root folder in GitHub repository

# Databricks workspace settings
workspace_name             = "eivindscustomworkspace"  # Name of the Databricks workspace. Must be unique within the Azure subscription.
workspace_sku              = "standard"  # SKU for the workspace. Possible values: "standard", "premium".
managed_resource_group_name= "Dataplay-managed"  # Name of the managed resource group that holds Azure Databricks assets.

# Databricks cluster settings
cluster_name               = "eivindsdataplaycluster"  # Name of the Databricks cluster.
autotermination_minutes    = 10  # Number of minutes before auto-terminating an inactive cluster. Integer value.
min_workers                = 1  # Minimum number of workers for autoscaling. Integer value.
max_workers                = 1  # Maximum number of workers for autoscaling. Integer value.

# Azure specific cluster settings
availability               = "ON_DEMAND_AZURE"  # Availability type for nodes. Possible values: "SPOT_AZURE", "SPOT_WITH_FALLBACK_AZURE", "ON_DEMAND_AZURE".
first_on_demand            = 1  # Number of on-demand nodes. Integer value.
spot_bid_max_price         = -1  # Maximum price for Azure spot instances. Use -1 for the lowest price, or specify a value.


# Workload settings
allow_jobs                 = true  # Boolean flag for allowing Databricks jobs. Set to true or false.
allow_notebooks            = false  # Boolean flag for allowing Databricks notebooks. Set to true or false.



