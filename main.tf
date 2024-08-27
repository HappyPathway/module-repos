locals {
  repos = [
    {
      repo          = "terraform-aws-release",
      public_module = true,
    },
    {
      repo          = "terraform-aws-image-pipeline",
      public_module = true,
    },
    {
      repo          = "terraform-tfe-workspace",
      public_module = true,
    },
    {
      repo          = "terraform-aws-beanstalk-environment",
      public_module = true,
    },
    {
      repo          = "terraform-aws-pipeline-codebuild",
      public_module = true,
    },
    {
      repo          = "terraform-aws-pipeline-codecommit",
      public_module = true,
    },
    {
      repo          = "terraform-aws-pipeline-codepipeline",
      public_module = true,
    },
    {
      repo          = "terraform-aws-pipeline-iam-role",
      public_module = true,
    },
    {
      repo          = "terraform-aws-pipeline-kms",
      public_module = true,
    },
    {
      repo          = "terraform-aws-pipeline-s3",
      public_module = true,
    },
    {
      repo          = "terraform-plugin-cache",
      public_module = true,
    },
    {
      repo          = "terraform-ghe-runner",
      public_module = true,
    },
    {
      repo          = "terraform-importer-gh-actions",
      public_module = true,
    },
    {
      repo          = "terraform-env-var",
      public_module = true,
    },
    {
      repo          = "terraform-repo-vars",
      public_module = true,
    },
    {
      repo          = "terraform-aws-ecr-clone",
      public_module = false,
    },
    {
      repo          = "terraform-aws-service-account",
      public_module = true,
    },
    {
      repo          = "terraform-aws-instance",
      public_module = true,
    },
    {
      repo          = "terraform-url-downloader",
      public_module = true,
    }
  ]
}

module "module" {
  for_each            = tomap({ for repo in local.repos : repo.repo => repo })
  source              = "HappyPathway/module/tfe"
  name                = each.value.repo
  github_is_private   = false
  public_module       = each.value.public_module
  pull_request_bypassers = [
    "/djaboxx"
  ]
}
