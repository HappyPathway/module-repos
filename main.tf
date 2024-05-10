module "repo" {
  source  = "HappyPathway/module/tfe"
  name = "terraform-aws-image-pipeline"
  github_is_private = false
}