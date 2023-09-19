#!/bin/bash

# Define your storage account and filesystem name
STORAGE_ACCOUNT_NAME=${storage_account_name}
FILESYSTEM_NAME=${filesystem_name}
MOUNT_NAME=${mount_name}

# Get the service principal client ID and client secret from Azure Key Vault or any other secure place
CLIENT_ID=$(databricks secrets get --scope ${scope_name} --key ${key_client_id})
CLIENT_SECRET=$(databricks secrets get --scope ${scope_name} --key ${key_client_secret})

# Mount the Azure Data Lake Storage Gen2 filesystem
dbutils.fs.mount(
  source = "abfss://${FILESYSTEM_NAME}@${STORAGE_ACCOUNT_NAME}.dfs.core.windows.net/",
  mount_point = "/mnt/${MOUNT_NAME}",
  extra_configs = Map(
    "fs.azure.account.auth.type.${STORAGE_ACCOUNT_NAME}.dfs.core.windows.net" -> "OAuth",
    "fs.azure.account.oauth.provider.type.${STORAGE_ACCOUNT_NAME}.dfs.core.windows.net" -> "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
    "fs.azure.account.oauth2.client.id.${STORAGE_ACCOUNT_NAME}.dfs.core.windows.net" -> "${CLIENT_ID}",
    "fs.azure.account.oauth2.client.secret.${STORAGE_ACCOUNT_NAME}.dfs.core.windows.net" -> "${CLIENT_SECRET}",
    "fs.azure.account.oauth2.client.endpoint.${STORAGE_ACCOUNT_NAME}.dfs.core.windows.net" -> "https://login.microsoftonline.com/${tenant_id}/oauth2/token"
  )
)