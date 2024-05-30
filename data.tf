data "aws_iam_policy_document" "assume_role_policy" {
  count = var.create_github_actions_role ? 1 : 0

  statement {
    effect = "Allow"

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::${aws_organizations_account.this.id}:oidc-provider/token.actions.githubusercontent.com"]
    }

    actions = ["sts:AssumeRoleWithWebIdentity"]

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:sub"
      values   = local.repository_ref_list
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }
  }
}
