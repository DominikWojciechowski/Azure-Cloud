# GENERAL
resource_group_name                     = "DW-AzureCloud-Sandbox"
location                                = "westeurope"
tags                                    = { 
                                            "environment": "DEV",
                                            "project": "AzureCloud"
                                        }

#LOGIC APP - CONSUMPTION
la001_logic_app_name                              = "laweacas001logicapp"

#LOGIC APP - STANDARD
la002_storage_account_name                      = "saweacas002logicapp"
la002_storage_account_account_tier              = "Standard"
la002_storage_account_replication_type          = "LRS"

la002_app_service_plan_name                     = "spweacas002logicapp"
la002_app_service_plan_os_type                  = "Linux"
la002_app_service_plan_sku_name                 = "WS1"

la002_logic_app_name                            = "laweacas002logicapp"
