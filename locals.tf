locals {
  repository_ref_list = var.create_github_actions_role ? flatten([
    for repo in var.repository_names :
    "repo:${var.github_username}/${repo}:*"
  ]) : []
}
