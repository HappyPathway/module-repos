organization = "roknsound"
github_actions = {
  username = "djaboxx"
  email    = "dave@roknsound.com"
  org      = "HappyPathway"
}

modtest_repos = [
  {
    repo          = "terraform-github-repo",
    public_module = true,
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
    public_module = true,
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
    public_module = true,
  },
  {
    repo          = "terraform-s3-apt-cache",
    public_module = true,
  },
  {
    repo          = "terraform-ghe-runner-container",
    public_module = true,
  },
  {
    repo          = "terraform-ecs-github-runner",
    public_module = true,
  },
  {
    repo          = "terraform-github-repo-subdir"
    public_module = true,
  },
  {
    repo          = "terraform-docker-workspace"
    public_module = true,
  },
  {
    repo          = "terraform-ls-files",
    public_module = true,
  },
  {
    repo          = "terraform-aws-release",
    public_module = true,
  },
  {
    repo          = "terraform-aws-serverless-runner",
    public_module = true,
  },
  {
    repo          = "terraform-aws-kms-key",
    public_module = true,
  },
  {
    repo          = "terraform-vault-tfe_token",
    public_module = true,
  },
  {
    repo          = "terraform-vault-service-account",
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
  },
  {
    repo          = "terraform-gcp-github-runner",
    public_module = true,
  },
  {
    repo          = "terraform-workspace-github-actions",
    public_module = true,
  },
  {
    repo          = "terraform-ecs-harness-delegate",
    public_module = true,
  },
  {
    repo          = "terraform-aws-config-store",
    public_module = true,
  },
  {
    repo          = "terraform-aws-vpc-services",
    public_module = true,
  },
  {
    repo          = "terraform-aws-opensearch",
    public_module = true,
  }
]

