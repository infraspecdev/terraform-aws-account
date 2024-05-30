variable "name" {
  description = "The name of the AWS account"
  type        = string
}

variable "email" {
  description = "The email address associated with the AWS account"
  type        = string
}

variable "parent_id" {
  description = "The ID of the parent organizational unit"
  type        = string
}

variable "iam_user_access_to_billing" {
  description = "If set to ALLOW, the IAM user will have access to the billing and cost management console"
  type        = string
  default     = "DENY"
}

variable "close_on_deletion" {
  description = "Specifies if the account should be closed on deletion"
  type        = bool
  default     = true
}

variable "create_github_actions_role" {
  description = "Boolean flag to create the IAM role for GitHub Actions"
  type        = bool
  default     = false
}
variable "github_username" {
  description = "The name of the GitHub user or organization that owns the repository(ies) the role will use."
  type        = string
  default     = null
}

variable "repository_names" {
  description = "List of names of the GitHub repository that will be allowed to assume the role."
  type        = list(string)
  default     = []
}

variable "role_name" {
  description = "The name of the IAM Role to be created."
  type        = string
  default     = null
}

variable "create_s3_bucket" {
  description = "Boolean flag to create an S3 bucket for Terraform state files"
  type        = bool
  default     = false
}
variable "s3_bucket_name" {
  description = "The name of the S3 bucket to be created"
  type        = string
  default     = null
}
