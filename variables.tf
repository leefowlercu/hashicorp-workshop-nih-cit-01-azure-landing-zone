### Module Variables
variable "subscription_name" {
  type        = string
  description = "Friendly name for the Azure Subscription. Should not include the Subscription Class (nonprod|prod)."

  validation {
    condition     = can(regex("^[a-z0-9]+(-[a-z0-9]+)*$", var.subscription_name))
    error_message = "The subscription_name must be a lowercase, hyphen-delimited alphanumeric string (e.g., 'my-subscription-01')."
  }
}

variable "subscription_class" {
  type        = string
  description = "The Classification (nonprod|prod) of the Subscription."

  validation {
    condition     = contains(["nonprod", "prod"], var.subscription_class)
    error_message = "The subscription_class must be either 'nonprod' or 'prod'."
  }
}

variable "location" {
  type        = string
  description = "The primary Azure region to deploy the Landing Zone resources in."
}

variable "vnet_offset" {
  type        = number
  description = "The offset for CIDR block calculation"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource"
  default     = {}
}

### TF Variables
variable "tf_hostname" {
  type        = string
  description = "The hostname of the HCPTF or TFE instance Azure will use to validate the workload identity federation tokens"
  default     = "app.terraform.io"
}

variable "tf_organization_name" {
  type        = string
  description = "The name of the HCPTF or TFE organization Azure will use to validate the workload identity federation tokens"
}
