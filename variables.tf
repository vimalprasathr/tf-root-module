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

variable "acr_name" {
  type        = string
  description = "Name for the Azure Container Registry"
}

variable "acr_sku" {
  type        = string
  description = "SKU for the ACR"
  default     = "Standard"
}

variable "admin_enabled" {
  type        = bool
  description = "Enable ACR admin account"
  default     = false
}


