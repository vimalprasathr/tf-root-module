#Azure authentication
subscription_id = ""
tenant_id       = ""
client_id       = ""
client_secret   = ""

#storage_account
resource_group_name  = "rg-app-storage"
location             = "eastus"
storage_account_name = "myunidfdfsdftorage123"
account_tier         = "Standard"
replication_type     = "GRS"

# ACR (Azure Container Registry)

acr_name        = "mycoolacr"
acr_sku         = "Standard"
admin_enabled   = true


tags = {
  environment = "dev"
  team        = "platform"
}
