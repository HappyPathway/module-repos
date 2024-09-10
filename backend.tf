# terraform {
#   backend "remote" {
#     organization = "roknsound"
#     workspaces {
#      prefix = "module-repos-"
#     }
#   }
# }

# hpw-terraform-state/module-repos
terraform {
  backend "gcs" {
    bucket = "hpw-terraform-state"
    prefix = "module-repos"
  }
}

