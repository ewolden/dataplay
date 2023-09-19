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