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
  type = map(string)
  description = "(Optional) Tags for resources"
}

################################################ LOGIC APP ####################################################

variable "logic_app_name" {
  type        = string
  description = "(Required) Logic App name."
}
