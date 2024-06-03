variable "account_name" {
  description = "The name of the AWS account."
  type        = string
}

variable "account_email" {
  description = "The email address associated with the AWS account."
  type        = string
}

variable "parent_org_id" {
  description = "The ID of the parent organizational unit."
  type        = string
}

variable "iam_user_access_to_billing" {
  description = "If set to ALLOW, the IAM user will have access to the billing and cost management console."
  type        = string
  default     = "DENY"
}

variable "close_on_deletion" {
  description = "Specifies if the account should be closed on deletion."
  type        = bool
  default     = true
}
