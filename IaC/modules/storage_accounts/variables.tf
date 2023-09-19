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