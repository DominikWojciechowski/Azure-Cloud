# LOGIC APP - 001 - Consumption
module "LOGIC_APP_001_CONSUMPTION" {
    source = "../modules/logicapp-consumption-module"

    resource_group_name = var.resource_group_name
    location            = var.location
    tags                = var.tags

    logic_app_name = var.la001_logic_app_name
}

module "LOGIC_APP_002_STANDARD" {
    source = "../modules/logicapp-standard-module"

    resource_group_name = var.resource_group_name
    location            = var.location
    tags                = var.tags

    storage_account_name                    = var.la002_storage_account_name 
    storage_account_account_tier            = var.la002_storage_account_account_tier
    storage_account_replication_type        = var.la002_storage_account_replication_type     

    app_service_plan_name                   = var.la002_app_service_plan_name
    app_service_plan_os_type                = var.la002_app_service_plan_os_type
    app_service_plan_sku_name               = var.la002_app_service_plan_sku_name

    logic_app_name                          = var.la002_logic_app_name
}