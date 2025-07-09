#storage_account
resource_group_name  = "rg-app-storage"
location             = "eastus"
storage_account_name = "myunidfdfsdftorage123"
account_tier         = "Standard"
replication_type     = "GRS"

tags = {
  environment = "dev"
  team        = "platform"
}
