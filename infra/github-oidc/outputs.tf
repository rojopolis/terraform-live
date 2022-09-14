output "result" {
  value = {
    oidc_role         = module.github-oidc-provider.oidc_role
    oidc_provider_arn = module.github-oidc-provider.oidc_provider_arn
  }
}
