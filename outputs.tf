output "arn" {
  description = "The ARN of this AWS account"
  value       = aws_organizations_account.this.arn
}

output "id" {
  description = "The ID of this AWS account"
  value       = aws_organizations_account.this.id
}

output "role_arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.github_actions_role[0].arn
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.terraform_state_bucket[0].arn
}
