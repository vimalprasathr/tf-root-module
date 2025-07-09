variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

#storage_account
variable "storage_account_name" {
  type = string
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "replication_type" {
  type    = string
  default = "LRS"
}

variable "tags" {
  type = map(string)
}

#Azure Authentication

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID (AAD)"
}

variable "client_id" {
  type        = string
  description = "Client ID of the Azure Service Principal"
}

variable "client_secret" {
  type        = string
  description = "Client Secret of the Azure Service Principal"
  sensitive   = true
}
# ACR (Azure Container Registry)

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources in"
}

variable "acr_name" {
  type        = string
  description = "Globally unique name for the Azure Container Registry"
}

variable "acr_sku" {
  type        = string
  description = "SKU for the ACR (Basic, Standard, Premium)"
  default     = "Basic"
}

variable "admin_enabled" {
  type        = bool
  description = "Enable admin user for ACR"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Common tags for all resources"
  default     = {}
}

