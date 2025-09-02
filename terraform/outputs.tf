output "function_app_name" {
  description = "Name of the Function App"
  value       = azurerm_linux_function_app.resume_function.name
}

output "storage_account_name" {
  description = "Name of the Storage Account"
  value       = azurerm_storage_account.resume_storage.name
}

output "website_url" {
  description = "URL of the static website"
  value       = azurerm_storage_account.resume_storage.primary_web_endpoint
}

output "resource_group_name" {
  description = "Name of the Resource Group"
  value       = data.azurerm_resource_group.main.name
}

output "key_vault_name" {
  description = "Name of the Key Vault"
  value       = azurerm_key_vault.resume_keyvault.name
}

output "cosmos_db_name" {
  description = "Name of the Cosmos DB Account"
  value       = azurerm_cosmosdb_account.resume_cosmos.name
}

# Debug outputs to help troubleshoot
output "debug_info" {
  description = "Debug information"
  value = {
    function_app_id = azurerm_linux_function_app.resume_function.id
    storage_account_id = azurerm_storage_account.resume_storage.id
    terraform_workspace = terraform.workspace
  }
}