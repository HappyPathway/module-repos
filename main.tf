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
    "terraform-importer-gh-actions",
    "terraform-env-var",
    "terraform-repo-vars",
    "terraform-aws-ecr-clone"
    "terraform-aws-service-account",
    "terraform-aws-instance"
  ]
}

module "module" {
  for_each          = toset(local.repos)
  source            = "HappyPathway/module/tfe"
  name              = each.value
  github_is_private = false
  public_module     = true
  pull_request_bypassers = [
    "/djaboxx"
  ]
}
