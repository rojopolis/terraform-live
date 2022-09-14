variable "github_repos" {
  type        = list(string)
  description = <<-EOT
        List of github repositories to enable OIDC access.
    EOT
}

variable "oidc_role_attach_policies" {
  type        = list(string)
  description = <<-EOT
        A list of custom or AWS managed polices to attach to the OIDC role.
    EOT
  default     = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}
