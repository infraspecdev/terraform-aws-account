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

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | Specifies if the account should be closed on deletion | `bool` | `true` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address associated with the AWS account | `string` | n/a | yes |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | If set to ALLOW, the IAM user will have access to the billing and cost management console | `string` | `"DENY"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the AWS account | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | The ID of the parent organizational unit | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of this AWS account |
| <a name="output_id"></a> [id](#output\_id) | The ID of this AWS account |
<!-- END_TF_DOCS -->