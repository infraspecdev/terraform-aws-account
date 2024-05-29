output "arn" {
  description = "The ARN of this AWS account"
  value       = aws_organizations_account.this.arn
}

output "id" {
  description = "The ID of this AWS account"
  value       = aws_organizations_account.this.id
}
