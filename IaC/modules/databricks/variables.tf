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
