# Main file for the Resource Group module
# This file contains the main set of configuration for creating a Resource Group in Azure.

resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
}