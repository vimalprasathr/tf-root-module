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
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry (e.g. Basic, Standard, Premium)"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Whether the admin user is enabled for the ACR"
  type        = bool
  default     = false
}
