
variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Bootstrap resource group name"
  type        = string
  default     = "rg-tfstate-bootstrap-cin-001"
}
