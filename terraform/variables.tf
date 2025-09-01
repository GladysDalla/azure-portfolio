# Azure Authentication Variables
variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  sensitive   = true
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}

# Existing Variables (keep your existing ones)
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "azure-resume-rg"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "azure-resume"
}

variable "storage_account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Storage account replication type"
  type        = string
  default     = "LRS"
}

variable "function_app_sku" {
  description = "Function app SKU"
  type        = string
  default     = "Y1"
}

variable "log_analytics_retention_days" {
  description = "Log analytics retention days"
  type        = number
  default     = 30
}

variable "key_vault_soft_delete_retention_days" {
  description = "Key vault soft delete retention days"
  type        = number
  default     = 7
}

variable "cosmos_consistency_level" {
  description = "Cosmos DB consistency level"
  type        = string
  default     = "Session"
}

variable "cosmos_throughput" {
  description = "Cosmos DB throughput"
  type        = number
  default     = 400
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "azure-resume"
  }
}