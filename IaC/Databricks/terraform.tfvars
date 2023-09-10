# Azure Resource Group settings
resource_group_name        = "myCustomResourceGroup"  # Name of the Azure Resource Group. Must be unique within the Azure subscription.
location                   = "West US"  # Azure region where resources will be created, e.g., "East US", "West Europe", etc.

# Databricks workspace settings
workspace_name             = "myCustomDatabricksWorkspace"  # Name of the Databricks workspace. Must be unique within the Azure subscription.
workspace_sku              = "premium"  # SKU for the workspace. Possible values: "standard", "premium".
managed_resource_group_name= "myCustomManagedResourceGroup"  # Name of the managed resource group that holds Azure Databricks assets.

# Databricks cluster settings
cluster_name               = "myCustomCluster"  # Name of the Databricks cluster.
autotermination_minutes    = 30  # Number of minutes before auto-terminating an inactive cluster. Integer value.
min_workers                = 2  # Minimum number of workers for autoscaling. Integer value.
max_workers                = 100  # Maximum number of workers for autoscaling. Integer value.

# Azure specific cluster settings
availability               = "ON_DEMAND_AZURE"  # Availability type for nodes. Possible values: "SPOT_AZURE", "SPOT_WITH_FALLBACK_AZURE", "ON_DEMAND_AZURE".
first_on_demand            = 2  # Number of on-demand nodes. Integer value.
spot_bid_max_price         = 50  # Maximum price for Azure spot instances. Use -1 for the lowest price, or specify a value.

# NFS mount settings
server_address             = "custom.blob.core.windows.net"  # NFS server address. Must be a valid hostname or IP address.
mount_options              = "custom_mount_options"  # String containing mount options passed to the NFS mount command.
remote_mount_dir_path      = "/custom/storage"  # Path to the directory on the remote service to mount.
local_mount_dir_path       = "/mnt/custom-nfs"  # Path inside the Spark container where the remote directory will be mounted.

# Workload settings
allow_jobs                 = true  # Boolean flag for allowing Databricks jobs. Set to true or false.
allow_notebooks            = false  # Boolean flag for allowing Databricks notebooks. Set to true or false.
