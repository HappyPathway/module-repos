organization = "roknsound"
github_actions = {
  username = "djaboxx"
  email    = "dave@roknsound.com"
  org      = "HappyPathway"
}

modtest_repos = [
  {
    repo          = "terraform-github-repo",
    public_module = false,
    mod_source    = "repo/github"
    target_workspaces = [{
      workspace        = "dev"
      workspace_repo   = "github-repos"
      workspace_branch = "main"
      repo_clone_type  = "https"
    }]
  },
  {
    repo          = "terraform-tfe-module",
    public_module = false,
    mod_source    = "module/tfe"
    target_workspaces = [{
      workspace        = "default"
      workspace_repo   = "module-repos"
      workspace_branch = "main"
      repo_clone_type  = "https"
    }]
  }
]

repos = [
  {
    repo          = "terraform-ec2-ghe-runner",
    public_module = false,
  },
  # terraform-aws-service-catalog
  {
    repo          = "terraform-aws-service-catalog",
    public_module = false,
  },
  # terraform-aws-morpheus-instance
  {
    repo          = "terraform-aws-cluster",
    public_module = false,
  },
  {
    repo          = "terraform-morpheus-queue",
    public_module = true,
  },
  {
    repo          = "terraform-s3-apt-cache",
    public_module = false,
  },
  {
    repo          = "terraform-ghe-runner-container",
    public_module = false,
  },
  {
    repo          = "terraform-ecs-github-runner",
    public_module = false,
  },
  {
    repo          = "terraform-github-repo-subdir"
    public_module = false,
  },
  {
    repo          = "terraform-docker-workspace"
    public_module = false,
  },
  {
    repo          = "terraform-ls-files",
    public_module = false,
  },
  {
    repo          = "terraform-aws-release",
    public_module = false,
  },
  {
    repo          = "terraform-aws-serverless-runner",
    public_module = false,
  },
  {
    repo          = "terraform-aws-kms-key",
    public_module = false,
  },
  {
    repo          = "terraform-vault-tfe_token",
    public_module = false,
  },
  {
    repo          = "terraform-vault-service-account",
    public_module = false,
  },
  {
    repo          = "terraform-aws-image-pipeline",
    public_module = false,
  },
  {
    repo          = "terraform-tfe-workspace",
    public_module = false,
  },
  {
    repo          = "terraform-aws-beanstalk-environment",
    public_module = false,
  },
  {
    repo          = "terraform-aws-pipeline-codebuild",
    public_module = false,
  },
  {
    repo          = "terraform-aws-pipeline-codecommit",
    public_module = false,
  },
  {
    repo          = "terraform-aws-pipeline-codepipeline",
    public_module = false,
  },
  {
    repo          = "terraform-aws-pipeline-iam-role",
    public_module = false,
  },
  {
    repo          = "terraform-aws-pipeline-kms",
    public_module = false,
  },
  {
    repo          = "terraform-aws-pipeline-s3",
    public_module = false,
  },
  {
    repo          = "terraform-plugin-cache",
    public_module = false,
  },
  {
    repo          = "terraform-ghe-runner",
    public_module = false,
  },
  {
    repo          = "terraform-importer-gh-actions",
    public_module = false,
  },
  {
    repo          = "terraform-env-var",
    public_module = false,
  },
  {
    repo          = "terraform-repo-vars",
    public_module = false,
  },
  {
    repo          = "terraform-aws-ecr-clone",
    public_module = false,
  },
  {
    repo          = "terraform-aws-service-account",
    public_module = false,
  },
  {
    repo          = "terraform-aws-instance",
    public_module = false,
  },
  {
    repo          = "terraform-url-downloader",
    public_module = false,
  },
  {
    repo          = "terraform-gcp-github-runner",
    public_module = false,
  },
  {
    repo          = "terraform-github-workspace",
    public_module = false,
  },
  {
    repo          = "terraform-ecs-harness-delegate",
    public_module = false,
  },
  {
    repo          = "terraform-aws-config-store",
    public_module = false,
  },
  {
    repo          = "terraform-aws-vpc-services",
    public_module = false,
  },
  {
    repo          = "terraform-aws-opensearch",
    public_module = false,
  },
  {
    repo          = "terraform-tfe-team",
    public_module = false,
  }
]

private_module_repos = true
