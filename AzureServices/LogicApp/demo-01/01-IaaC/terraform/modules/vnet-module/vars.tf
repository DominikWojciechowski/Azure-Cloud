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

################################################ VNET ####################################################

variable "virtual_network_security_group_name" {
  type        = string
  description = "(Required) Network security group name."
}

variable "virtual_network_name" {
  type        = string
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created"
}

variable "virtual_network_address_space" {
  type        = string
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "virtual_network_subnet_name" {
  type        = string
  description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
}

variable "virtual_network_subnet_adress_prefix" {
  type        = string
  description = "(Required) The address prefix to use for the subnet."
}