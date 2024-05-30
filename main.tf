resource "aws_organizations_account" "this" {
  provider                   = aws.root
  name                       = var.name
  email                      = var.email
  parent_id                  = var.parent_id
  iam_user_access_to_billing = var.iam_user_access_to_billing
  close_on_deletion          = var.close_on_deletion
}

resource "aws_iam_role" "github_actions_role" {
  count              = var.create_github_actions_role ? 1 : 0
  depends_on         = [aws_organizations_account.this]
  provider           = aws.new_account
  name               = var.role_name != null ? var.role_name : "gh_action_role_${var.name}"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy[0].json
}

resource "aws_iam_role_policy_attachment" "attach_admin_policy" {
  count      = var.create_github_actions_role ? 1 : 0
  depends_on = [aws_iam_role.github_actions_role]
  provider   = aws.new_account
  role       = aws_iam_role.github_actions_role[0].name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  count      = var.create_s3_bucket ? 1 : 0
  depends_on = [aws_organizations_account.this]
  provider   = aws.new_account
  bucket     = var.s3_bucket_name != null ? var.s3_bucket_name : "${var.name}_iac_tf_remote_state"
}
