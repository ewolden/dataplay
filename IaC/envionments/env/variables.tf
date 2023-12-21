# Variables for Resource Group
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The location for creating the resources"
  type        = string
}

# Secret variables
variable "client_id" {
  description = "Service principal client id"
  type        = string
}
variable "client_secret" {
  description = "Service principal client secret"
  type        = string
}
variable "tenant_id" {
  description = "Service principal tenant id"
  type        = string
}
variable "subscription_id" {
  description = "Service principal subscription id"
  type        = string
}

# Variables for Data Factory
variable "data_factory_name" {
  description = "The name of the Azure Data Factory"
  type        = string
}

# Variables for GitHub Configuration
variable "github_account_name" {
  description = "Specifies the GitHub account name"
  type        = string
}

variable "github_branch_name" {
  description = "Specifies the branch of the GitHub repository to get code from"
  type        = string
}

variable "github_git_url" {
  description = "Specifies the GitHub Enterprise host name"
  type        = string
}

variable "github_repository_name" {
  description = "Specifies the name of the GitHub repository"
  type        = string
}

variable "github_root_folder" {
  description = "Specifies the root folder within the GitHub repository"
  type        = string
  default     = "/"
}

# Databricks workspace settings
variable "workspace_name" {
  type        = string
  description = "The name of the Databricks workspace."
}

variable "workspace_sku" {
  type        = string
  description = "The SKU of the Databricks workspace."
}

variable "managed_resource_group_name" {
  type        = string
  description = "The name of the managed resource group for Databricks."
}

# Databricks cluster settings
variable "cluster_name" {
  type        = string
  description = "The name of the Databricks cluster."
}

variable "autotermination_minutes" {
  type        = number
  description = "Time in minutes after which the cluster will auto-terminate."
}

variable "min_workers" {
  type        = number
  description = "The minimum number of worker nodes for the cluster."
}

variable "max_workers" {
  type        = number
  description = "The maximum number of worker nodes for the cluster."
}

# Azure specific cluster settings
variable "availability" {
  type        = string
  description = "Availability type for Azure Databricks cluster."
}

variable "first_on_demand" {
  type        = number
  description = "Number of initial nodes to be placed on on-demand instances."
}

variable "spot_bid_max_price" {
  type        = number
  description = "The maximum price for Azure spot instances."
}

# Storage account settings
variable "storage_account_name" {
  type        = string
  description = "Name of the Azure Storage Account."
}

variable "storage_container_name" {
  type        = string
  description = "Name of the container in the Azure Storage Account."
}

# Workload settings
variable "allow_jobs" {
  type        = bool
  description = "Flag to enable or disable running Databricks jobs."
}

variable "allow_notebooks" {
  type        = bool
  description = "Flag to enable or disable running Databricks notebooks."
}

# Storage account tier
variable "account_tier" {
  description = "The tier to use for this storage account."
  type        = string
  default     = "Standard"
}

# Storage account replication type
variable "account_replication_type" {
  description = "The replication type for this storage account."
  type        = string
  default     = "LRS"
}

# Enable Hierarchical Namespace
variable "is_hns_enabled" {
  description = "Is Hierarchical Namespace enabled?"
  type        = bool
  default     = true
}

variable "container_access_type" {
  description = "The access level configured for the container."
  type        = string
  default     = "private"
}

# Data Lake Gen2 specific settings
variable "filesystem_name" {
  type        = string
  description = "Name of the filesystem in the Azure Data Lake Storage Gen2 account."
}

variable "mount_name" {
  type        = string
  description = "Name of the mount point in Databricks."
}

# Databricks Secret Scope and Key Names for storing service principal details
variable "scope_name" {
  type        = string
  description = "Name of the Databricks secret scope."
}

variable "databricks_host" {
  type        = string
  description = "name of the databricks host"
}
