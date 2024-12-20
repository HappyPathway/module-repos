variable "organization" {
  description = "The name of the organization to create the repository in"
}

variable "github_actions" {
  description = "The github actions configuration"
  type = object({
    username = string
    email    = string
    org      = string
  })
}

variable "modtest_repos" {
  type = list(object(
    {
      repo                = string,
      public_module       = bool,
      mod_source          = string,
      private_module_repo = optional(bool, false)
      target_workspaces = list(object({
        workspace        = string
        workspace_repo   = string
        workspace_branch = optional(string, "main")
        repo_clone_type  = optional(string, "https")

      }))
  }))
}

variable "repos" {
  type = list(object(
    {
      repo                = string,
      public_module       = bool
      private_module_repo = optional(bool, false)
    }
  ))
}

variable "tfe_hostname" {
  default = "app.terraform.io"
}

variable "private_module_repos" {
  default = false
}
