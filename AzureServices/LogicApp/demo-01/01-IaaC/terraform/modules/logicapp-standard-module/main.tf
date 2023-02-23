# Create Storage Account
resource "azurerm_storage_account" "storage_account" {

  location                        = var.location
  resource_group_name             = var.resource_group_name
  tags = var.tags

  name                            = var.storage_account_name
  account_tier                    = var.storage_account_account_tier
  account_replication_type        = var.storage_account_replication_type
}

# Create app service plan
resource "azurerm_service_plan" "app_service_plan" {

  location                        = var.location
  resource_group_name             = var.resource_group_name
  tags = var.tags

  name                = var.app_service_plan_name
  os_type             = var.app_service_plan_os_type
  sku_name            = var.app_service_plan_sku_name
}

# Create Logic App - Consumption Plan
resource "azurerm_logic_app_standard" "logic_app_standard" {
  
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tags = var.tags

  name                       = var.logic_app_name

  app_service_plan_id        = azurerm_service_plan.app_service_plan.id
  storage_account_name       = azurerm_storage_account.storage_account.name
  storage_account_access_key = azurerm_storage_account.storage_account.primary_access_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
}

output "id" {
  value = azurerm_logic_app_standard.logic_app_standard.id
}
