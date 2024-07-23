moved {
  from = module.repo
  to   = module.aws-image-pipeline
}

module "aws-image-pipeline" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-image-pipeline"
  github_is_private = false
}

module "tfe-workspace" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-tfe-workspace"
  github_is_private = false
}


module "beanstalk-environment" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-beanstalk-environment"
  github_is_private = false
  # github_create_repo = false
}


# terraform-aws-pipeline-codebuild
module "terraform-aws-pipeline-codebuild" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-pipeline-codebuild"
  github_is_private = false
  # github_create_repo = false
}

# terraform-aws-pipeline-codecommit
module "terraform-aws-pipeline-codebuild" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-pipeline-codecommit"
  github_is_private = false
  # github_create_repo = false
}

# terraform-aws-pipeline-codepipeline
module "terraform-aws-pipeline-codebuild" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-pipeline-codepipeline"
  github_is_private = false
  # github_create_repo = false
}

# terraform-aws-pipeline-iam-role
module "terraform-aws-pipeline-iam-role" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-pipeline-iam-role"
  github_is_private = false
  # github_create_repo = false
}

# terraform-aws-pipeline-kms
module "terraform-aws-pipeline-kms" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-pipeline-kms"
  github_is_private = false
  # github_create_repo = false
}

# terraform-aws-pipeline-s3
module "terraform-aws-pipeline-s3" {
  source            = "HappyPathway/module/tfe"
  name              = "terraform-aws-pipeline-s3"
  github_is_private = false
  # github_create_repo = false
}