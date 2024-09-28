<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_modtest_repos"></a> [modtest\_repos](#module\_modtest\_repos) | HappyPathway/module/tfe | n/a |
| <a name="module_module"></a> [module](#module\_module) | HappyPathway/module/tfe | n/a |

## Resources

| Name | Type |
|------|------|
| [google_kms_crypto_key.crypto_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_crypto_key) | data source |
| [google_kms_key_ring.key_ring](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_key_ring) | data source |
| [google_kms_secret.secrets](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/kms_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_actions"></a> [github\_actions](#input\_github\_actions) | The github actions configuration | <pre>object({<br>    username = string<br>    email    = string<br>    org      = string<br>  })</pre> | n/a | yes |
| <a name="input_modtest_repos"></a> [modtest\_repos](#input\_modtest\_repos) | n/a | <pre>list(object(<br>    {<br>      repo          = string,<br>      public_module = bool,<br>      mod_source    = string<br>      target_workspaces = list(object({<br>        workspace        = string<br>        workspace_repo   = string<br>        workspace_branch = optional(string, "main")<br>        repo_clone_type  = optional(string, "https")<br>      }))<br>  }))</pre> | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization to create the repository in | `any` | n/a | yes |
| <a name="input_repos"></a> [repos](#input\_repos) | n/a | <pre>list(object(<br>    {<br>      repo          = string,<br>      public_module = bool<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_tfe_hostname"></a> [tfe\_hostname](#input\_tfe\_hostname) | n/a | `string` | `"app.terraform.io"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repos"></a> [repos](#output\_repos) | n/a |
<!-- END_TF_DOCS -->