variable "automation_account_name" {
  type        = string
  description = "The name of the Azure Automation Account."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Azure Automation Account."
}

variable "location" {
  type        = string
  description = "The location in which to create the Azure Automation Account."
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the Azure Automation Account."
  default     = "Basic"
}

variable "local_authentication_enabled" {
  type        = bool
  description = "Whether or not local authentication is enabled for the Azure Automation Account."
  default     = false
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether or not public network access is enabled for the Azure Automation Account."
  default     = false
}

variable "identity_type" {
  type        = string
  description = "The type of identity to assign to the Azure Automation Account."
  default     = "SystemAssigned"
}

variable "identity_ids" {
  type        = list(string)
  description = "The list of identity IDs to assign to the Azure Automation Account."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the Azure Automation Account."
  default     = {}
}