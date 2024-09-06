terraform {
  backend "remote" {
    organization = "roknsound"
    workspaces {
     prefix = "module-repos-"
    }
  }
}
