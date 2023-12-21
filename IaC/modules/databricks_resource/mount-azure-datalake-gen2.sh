#!/bin/bash


# Mount the Azure Data Lake Storage Gen2 filesystem
dbutils.fs.mount(
  source = "abfss://${filesystem_name}@${storage_account_name}.dfs.core.windows.net/",
  mount_point = "/mnt/${mount_name}",
  extra_configs = Map(
    "fs.azure.account.auth.type.${storage_account_name}.dfs.core.windows.net" -> "OAuth",
    "fs.azure.account.oauth.provider.type.${storage_account_name}.dfs.core.windows.net" -> "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
    "fs.azure.account.oauth2.client.id.${storage_account_name}.dfs.core.windows.net" -> "${key_client_id}",
    "fs.azure.account.oauth2.client.secret.${storage_account_name}.dfs.core.windows.net" -> "${key_client_secret}",
    "fs.azure.account.oauth2.client.endpoint.${storage_account_name}.dfs.core.windows.net" -> "https://login.microsoftonline.com/${tenant_id}/oauth2/token"
  )
)