terraform {
  backend "remote" {
    organization = "RoknSound-Public-Modules"
    workspaces {
      name = "module-repos"
    }
  }
}
