module "github-oidc-provider" {
  source  = "terraform-module/github-oidc-provider/aws"
  version = "2.1.0"

  create_oidc_provider = true
  create_oidc_role     = true

  repositories              = var.github_repos
  oidc_role_attach_policies = var.oidc_role_attach_policies
}

resource "github_actions_secret" "secret" {
  for_each        = toset(var.github_repos)
  repository      = each.value
  secret_name     = "AWS_ROLE_ARN"
  plaintext_value = module.github-oidc-provider.oidc_role
}

