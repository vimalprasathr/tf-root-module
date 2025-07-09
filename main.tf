provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

#storage_account
module "storage_account" {
  source = "git::https://github.com/vimalprasathr/tf-module.git//modules/storage_account?ref=v1.0.1"
  resource_group_name    = var.resource_group_name
  location               = var.location
  storage_account_name   = var.storage_account_name
  account_tier           = var.account_tier
  replication_type       = var.replication_type
  tags                   = var.tags
}

output "blob_endpoint" {
  value = module.storage_account.primary_blob_endpoint
}

# ACR
  
module "acr" {
  source              = "git::https://github.com/vimalprasathr/tf-module.git//modules/acr?ref=v1.0.1"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
  acr_sku             = var.acr_sku
  admin_enabled       = var.admin_enabled
  tags                = var.tags
}

