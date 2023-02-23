################################################ GENERAL ####################################################

variable "module_name" {
  type        = string
  description = "Module name. Will be used as tag for resources"
}

################################################ ASSIGNMENTS ####################################################

variable "key_vault_id" {
  type        = string
  description = "Key Vault ID."
}

variable "object_id" {
  type        = string
  description = "Object ID."
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "key_permissions" {
  type        = list(string)
  description = "Key permissions"
}

variable "secret_permissions" {
  type        = list(string)
  description = "Secret permissions"
}