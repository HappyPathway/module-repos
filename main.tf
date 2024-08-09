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
    "terraform-plugin-cache",
    "terraform-ghe-runner",
    "terraform-gh_actions-import",
    "terraform-env-var",
    "terraform-repo-vars"
  ]
}

module "module" {
  for_each          = toset(local.repos)
  source            = "HappyPathway/module/tfe"
  name              = each.value
  github_is_private = false
  pull_request_bypassers = [
    "/djaboxx"
  ]
}