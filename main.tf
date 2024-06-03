data "aws_organizations_organization" "org" {}

resource "aws_organizations_account" "this" {
  name                       = var.account_name
  email                      = var.account_email
  parent_id                  = var.parent_org_id != "" ? var.parent_org_id : data.aws_organizations_organization.org.roots[0].id
  iam_user_access_to_billing = var.iam_user_access_to_billing
  close_on_deletion          = var.close_on_deletion
}
