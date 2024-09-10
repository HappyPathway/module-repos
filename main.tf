module "module" {
  for_each          = tomap({ for repo in var.repos : repo.repo => repo })
  organization      = var.organization
  source            = "HappyPathway/module/tfe"
  name              = each.value.repo
  github_is_private = false
  pull_request_bypassers = [
    "/djaboxx"
  ]
  github_actions = var.github_actions
}


module "modtest_repos" {
  for_each          = tomap({ for repo in var.modtest_repos : repo.repo => repo })
  organization      = var.organization
  source            = "HappyPathway/module/tfe"
  name              = each.value.repo
  github_is_private = false
  pull_request_bypassers = [
    "/djaboxx"
  ]
  github_actions         = var.github_actions
  target_workspaces      = each.value.target_workspaces
  modtest                = true
  create_registry_module = false
  mod_source             = each.value.mod_source
}

output "repos" {
  value = [for repo in merge(module.module, module.modtest_repos) : repo.github_repo.ssh_clone_url]
}
