moved {
  from = module.repo
  to   = module.aws-image-pipeline
}

locals {
  repos = [
    "terraform-aws-release",
    "terraform-aws-image-pipeline",
    "terraform-tfe-workspace",
    "terraform-aws-beanstalk-environment",
    "terraform-aws-pipeline-codebuild",
    "terraform-aws-pipeline-codecommit",
    "terraform-aws-pipeline-codepipeline",
    "terraform-aws-pipeline-iam-role",
    "terraform-aws-pipeline-kms",
    "terraform-aws-pipeline-s3",
    "terraform-plugin-cache"
  ]
}

moved {
  from = module.terraform-plugin-cache
  to   = module.module["terraform-plugin-cache"]
}

moved {
  from = module.terraform-aws-release
  to   = module.module["terraform-aws-release"]
}

moved {
  from = module.aws-image-pipeline
  to   = module.module["terraform-aws-image-pipeline"]
}

moved {
  from = module.tfe-workspace
  to   = module.module["terraform-tfe-workspace"]
}

moved {
  from = module.beanstalk-environment
  to   = module.module["terraform-aws-beanstalk-environment"]
}

moved {
  from = module.terraform-aws-pipeline-codebuild
  to   = module.module["terraform-aws-pipeline-codebuild"]
}

moved {
  from = module.terraform-aws-pipeline-codecommit
  to   = module.module["terraform-aws-pipeline-codecommit"]
}

moved {
  from = module.terraform-aws-pipeline-codepipeline
  to   = module.module["terraform-aws-pipeline-codepipeline"]
}

moved {
  from = module.terraform-aws-pipeline-iam-role
  to   = module.module["terraform-aws-pipeline-iam-role"]
}

moved {
  from = module.terraform-aws-pipeline-kms
  to   = module.module["terraform-aws-pipeline-kms"]
}

moved {
  from = module.terraform-aws-pipeline-s3
  to   = module.module["terraform-aws-pipeline-s3"]
}

module "module" {
  for_each          = toset(local.repos)
  source            = "HappyPathway/module/tfe"
  name              = each.value
  github_is_private = false
  pull_request_bypassers = [
    "/djaboxx"
  ]
  # github_create_repo = false
}