# terraform-aws-account

This module creates an AWS account

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.8.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.51.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.51.0 |
| <a name="provider_aws.new_account"></a> [aws.new\_account](#provider\_aws.new\_account) | ~> 5.51.0 |
| <a name="provider_aws.root"></a> [aws.root](#provider\_aws.root) | ~> 5.51.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.github_actions_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_admin_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |
| [aws_s3_bucket.terraform_state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | Specifies if the account should be closed on deletion | `bool` | `true` | no |
| <a name="input_create_github_actions_role"></a> [create\_github\_actions\_role](#input\_create\_github\_actions\_role) | Boolean flag to create the IAM role for GitHub Actions | `bool` | `false` | no |
| <a name="input_create_s3_bucket"></a> [create\_s3\_bucket](#input\_create\_s3\_bucket) | Boolean flag to create an S3 bucket for Terraform state files | `bool` | `false` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address associated with the AWS account | `string` | n/a | yes |
| <a name="input_github_username"></a> [github\_username](#input\_github\_username) | The name of the GitHub user or organization that owns the repository(ies) the role will use. | `string` | `null` | no |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | If set to ALLOW, the IAM user will have access to the billing and cost management console | `string` | `"DENY"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the AWS account | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | The ID of the parent organizational unit | `string` | n/a | yes |
| <a name="input_repository_names"></a> [repository\_names](#input\_repository\_names) | List of names of the GitHub repository that will be allowed to assume the role. | `list(string)` | `[]` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the IAM Role to be created. | `string` | `null` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | The name of the S3 bucket to be created | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of this AWS account |
| <a name="output_id"></a> [id](#output\_id) | The ID of this AWS account |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | The ARN of the IAM role |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | The ARN of the S3 bucket |
<!-- END_TF_DOCS -->