variable "databricks_host" {}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "azurerm" {
  features {}
}

# Use Azure CLI authentication.
provider "databricks" {
  host = var.databricks_host
  azure_client_id = var.key_client_id
  azure_client_secret = var.key_client_secret
  azure_tenant_id = var.tenant_id
}