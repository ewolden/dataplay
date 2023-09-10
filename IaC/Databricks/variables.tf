# Azure Resource Group settings
variable "resource_group_name" {
  default = "myResourceGroup"
}

variable "location" {
  default = "East US"
}

# Databricks workspace settings
variable "workspace_name" {
  default = "myDatabricksWorkspace"
}

variable "workspace_sku" {
  default = "standard"
}

variable "managed_resource_group_name" {
  default = "myManagedResourceGroup"
}

# Databricks cluster settings
variable "cluster_name" {
  default = "MyDatabricksCluster"
}

variable "autotermination_minutes" {
  default = 20
}

variable "min_workers" {
  default = 1
}

variable "max_workers" {
  default = 50
}

# Azure specific cluster settings
variable "availability" {
  default = "SPOT_WITH_FALLBACK_AZURE"
}

variable "first_on_demand" {
  default = 1
}

variable "spot_bid_max_price" {
  default = 100
}

# NFS mount settings
variable "server_address" {
  default = "example.blob.core.windows.net"
}

variable "mount_options" {
  default = "sec=sys,vers=3,nolock,proto=tcp"
}

variable "remote_mount_dir_path" {
  default = "/example/storage"
}

variable "local_mount_dir_path" {
  default = "/mnt/nfs-test"
}

# Workload settings
variable "allow_jobs" {
  default = false
}

variable "allow_notebooks" {
  default = true
}
