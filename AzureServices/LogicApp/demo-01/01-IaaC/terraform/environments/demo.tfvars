# GENERAL
resource_group_name                     = "#{resourceGroup}#"
location                                = "#{resourceLocation}#"
tags                                    = { 
                                            "environment": "DEMO",
                                            "project": "AzureCloud"
                                        }

#LOGIC APP - CONSUMPTION
la001_logic_app_name                              = "#{logicApp1Name}#"

#LOGIC APP - STANDARD
la002_storage_account_name                      = "#{logicApp2StorageName}#"
la002_storage_account_account_tier              = "Standard"
la002_storage_account_replication_type          = "LRS"

la002_app_service_plan_name                     = "#{logicApp2PlanName}#"
la002_app_service_plan_os_type                  = "Linux"
la002_app_service_plan_sku_name                 = "WS1"

la002_logic_app_name                            = "#{logicApp2Name}#"