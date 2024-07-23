terraform {
  backend "remote" {
    organization = "roknsound"
    workspaces {
      name = "module-repos"
    }
  }
}