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
| [aws_organizations_organization.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_email"></a> [account\_email](#input\_account\_email) | The email address associated with the AWS account. | `string` | n/a | yes |
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | The name of the AWS account. | `string` | n/a | yes |
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | Specifies if the account should be closed on deletion. | `bool` | `true` | no |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | If set to ALLOW, the IAM user will have access to the billing and cost management console. | `string` | `"DENY"` | no |
| <a name="input_parent_org_id"></a> [parent\_org\_id](#input\_parent\_org\_id) | The ID of the parent organizational unit. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_arn"></a> [account\_arn](#output\_account\_arn) | The ARN of the AWS account. |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The ID of the AWS account. |
<!-- END_TF_DOCS -->