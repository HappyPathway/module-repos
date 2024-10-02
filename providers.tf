terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
  }
}


provider "github" {
  owner = "HappyPathway"
}

provider "tfe" {
  hostname = var.tfe_hostname
}
