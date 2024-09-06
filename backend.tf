terraform {
  backend "gcs" {
    bucket = "hpw-terraform-state"
    prefix = "module-repos"
  }
}
