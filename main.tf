locals {
  secrets = {
    "gh_token"  = "CiQAyUlC2OwmE+frsnJK1sadMwTQvvPQMtn98TDJ+PeR7JcMUTQSUQAV38Wmk58ml0oxoS3+FfzepRBCZO/qynud/ZA8n9ULbfKt5BpWSKS9BaF2AGlPQWHv9PHxTCedz7ymfSLgxUYL5P3OYWHRMB7QormvGvIq+A=="
    "tfe_token" = "CiQAyUlC2FXQzZDVLDOgVcGmbV4pdFupC4702TZRlQYmKWScbAYSgwEAFd/FpnLAPwhTYbea2MSszuQiIbztfoPeGkY3EsnjgOEvu8x/cCQ66zrCxRo3Xx1CTNxTgq7CfcdRXrSqbHFe8w/PFAWhMPCyos6GC8F0nezYQmkzibjxvjH+857m0Qoi6IFiVkEJ6Z4lJKTWMhZe1DSKbayTPF0JhXFkXZR08KhUWA=="
  }
}

data "google_kms_key_ring" "key_ring" {
  project  = "happypathway-1522441039906"
  name     = "terraform-key-ring"
  location = "us-west2"
}

data "google_kms_crypto_key" "crypto_key" {
  name     = "workspace-secrets"
  key_ring = data.google_kms_key_ring.key_ring.id
}

data "google_kms_secret" "secrets" {
  for_each   = tomap(local.secrets)
  crypto_key = data.google_kms_crypto_key.crypto_key.id
  ciphertext = each.value
}

module "module" {
  for_each          = tomap({ for repo in var.repos : repo.repo => repo })
  organization      = var.organization
  source            = "HappyPathway/module/tfe"
  name              = each.value.repo
  github_is_private = each.value.private_module_repo
  pull_request_bypassers = [
    "/djaboxx"
  ]
  github_actions = var.github_actions
  enforce_prs    = !each.value.private_module_repo
}

module "modtest_repos" {
  for_each          = tomap({ for repo in var.modtest_repos : repo.repo => repo })
  organization      = var.organization
  source            = "HappyPathway/module/tfe"
  name              = each.value.repo
  github_is_private = each.value.private_module_repo
  pull_request_bypassers = [
    "/djaboxx"
  ]
  github_actions         = var.github_actions
  target_workspaces      = each.value.target_workspaces
  modtest                = true
  create_registry_module = false
  mod_source             = each.value.mod_source
  enforce_prs            = !each.value.private_module_repo
}

output "repos" {
  value = [for repo in merge(module.module, module.modtest_repos) : repo.github_repo.ssh_clone_url]
}
