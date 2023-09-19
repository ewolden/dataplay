# Variables for Resource Group
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The location of the Azure Resource Group"
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

# Azure Resource Group settings
variable "resource_group_name" {
  type        = string
  description = "The name of the Azure Resource Group."
}

variable "location" {
  type        = string
  description = "The Azure location where resources will be created."
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

# Resource Group name
variable "name" {
  description = "The name of the resource group"
  type        = string
}

# Azure location
variable "location" {
  description = "The Azure location where the resource group should be created"
  type        = string
}


# Resource group name
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "example-resources"
}

# Azure location
variable "location" {
  description = "Azure location for the resources."
  type        = string
  default     = "East US"
}

# Storage account name
variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "examplestoracc"
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

variable "storage_container_name" {
  description = "The name of the storage container."
  type        = string
}

variable "container_access_type" {
  description = "The access level configured for the container."
  type        = string
  default     = "private"
}