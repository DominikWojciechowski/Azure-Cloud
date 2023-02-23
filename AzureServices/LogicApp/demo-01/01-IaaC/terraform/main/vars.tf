################################################ GENERAL ####################################################

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "tags" {
  type        = map(string)
  description = "(Optional) Tags for resources"
}

################################################ LOGIC APP 001 - CONSUMPTION ####################################################

## LOGIC APP ##

variable "la001_logic_app_name" {
  type        = string
  description = "(Required) Logic App name."
}

################################################ LOGIC APP 002 - STANDARD  ####################################################

## STORAGE ACCOUNT ##

variable "la002_storage_account_name" {
  type        = string
  description = "(Required) Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}

variable "la002_storage_account_account_tier" {
  type          = string
  description   = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  default       = "Standard "
}

variable "la002_storage_account_replication_type" {
  type        = string
  description   = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  default       = "LRS "
}

## APP SERVICE PLAN ##

variable "la002_app_service_plan_name" {
  type        = string
  description = "(Required) Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
}

variable "la002_app_service_plan_os_type" {
  type          = string
  description   = "(Required) The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer. Changing this forces a new resource to be created."
  default       = "Linux"
}

variable "la002_app_service_plan_sku_name" {
  type        = string
  description   = "(Required) The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, P1v2, P2v2, P3v2, P1v3, P2v3, P3v3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, WS3, and Y1."
  default       = "WS1 "
}

## LOGIC APP ##

variable "la002_logic_app_name" {
  type        = string
  description = "(Required) Logic App name."
}