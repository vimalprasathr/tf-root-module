provider "azurerm" {
  features {}
}

module "storage_account" {
  source                 = "git::https://github.com/vimalprasathr/tf-module.git//modules?ref=v1.0.0"
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
