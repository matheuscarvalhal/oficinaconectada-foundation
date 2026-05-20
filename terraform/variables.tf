variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "project_name" {
  type    = string
  default = "oficinaconectada"
}

variable "vpc_cidr" {
  type    = string
  default = "10.40.0.0/16"
}

variable "github_organization" {
  type    = string
  default = "matheuscarvalhal"
}

variable "github_oidc_repositories" {
  type = list(string)
  default = [
    "oficinaconectada-foundation",
    "oficinaconectada-data-platform",
    "oficinaconectada-platform-runtime",
    "oficinaconectada-app-deployments"
  ]
}

variable "github_actions_role_name" {
  type    = string
  default = "oficinaconectada-github-actions-role"
}

variable "github_actions_policy_arn" {
  type    = string
  default = "arn:aws:iam::aws:policy/AdministratorAccess"
}
