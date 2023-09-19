# Create a Data Factory
resource "azurerm_data_factory" "example" {
  name                = var.data_factory_name
  location            = var.location
  resource_group_name = var.resource_group_name
  
  # GitHub Configuration
  github_configuration {
    account_name    = var.github_account_name
    branch_name     = var.github_branch_name
    git_url         = var.github_git_url
    repository_name = var.github_repository_name
    root_folder     = var.github_root_folder
  }
}