# Variables file for the Resource Group module
# Defines the variables used to create a Resource Group in Azure.

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
