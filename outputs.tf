output "account_arn" {
  description = "The ARN of the AWS account."
  value       = aws_organizations_account.this.arn
}

output "account_id" {
  description = "The ID of the AWS account."
  value       = aws_organizations_account.this.id
}
