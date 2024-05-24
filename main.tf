moved {
  from = module.repo
  to = module.aws-image-pipeline
}

module "aws-image-pipeline" {
  source  = "HappyPathway/module/tfe"
  name = "terraform-aws-image-pipeline"
  github_is_private = false
}

module "tfe-workspace" {
  source  = "HappyPathway/module/tfe"
  name = "terraform-tfe-workspace"
  github_is_private = false
}


module "beanstalk-environment" {
  source  = "HappyPathway/module/tfe"
  name = "terraform-aws-beanstalk-environment"
  github_is_private = false
  # github_create_repo = false
}
