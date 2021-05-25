# Terraform Kerberus GCP Crossplane

Terraform module which configure the Kerberus Crossplane for gcp.

## Usage

```hcl
module "kerberus_gcp_crossplane" {
  source = "project-kerberus/gcp_crossplane/kerberus"

  path_kubeconfig =  "~/.kube/config"
}
```

## Examples

* [GCP](../../examples/gcp/)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.08 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 3.62.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 3.62.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_binding.iam_project](https://registry.terraform.io/providers/hashicorp/google/3.62.0/docs/resources/project_iam_binding) | resource |
| [google_project_service.project_service](https://registry.terraform.io/providers/hashicorp/google/3.62.0/docs/resources/project_service) | resource |
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/3.62.0/docs/resources/service_account) | resource |
| [google_service_account_key.crossplan_key](https://registry.terraform.io/providers/hashicorp/google/3.62.0/docs/resources/service_account_key) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/3.62.0/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_crossplane_registry"></a> [crossplane\_registry](#input\_crossplane\_registry) | registry for the gcp Crossplane package | `string` | `"ghcr.io/projectkerberus/provider-gcp:v0.17.1"` | no |
| <a name="input_gcp_roles"></a> [gcp\_roles](#input\_gcp\_roles) | GCP Roles to assigne at the created service account | `set(string)` | <pre>[<br>  "roles/iam.serviceAccountUser",<br>  "roles/cloudsql.admin",<br>  "roles/container.admin",<br>  "roles/redis.admin",<br>  "roles/compute.networkAdmin",<br>  "roles/storage.admin"<br>]</pre> | no |
| <a name="input_gcp_service_account_id"></a> [gcp\_service\_account\_id](#input\_gcp\_service\_account\_id) | SA id to be created to be used by Crossplane GCP Provider | `string` | `"kerberus-crossplane"` | no |
| <a name="input_gcp_service_account_name"></a> [gcp\_service\_account\_name](#input\_gcp\_service\_account\_name) | SA name to be created to be used by Crossplane GCP Provider | `string` | `"Kerberus Crossplane Service Account"` | no |
| <a name="input_gcp_services"></a> [gcp\_services](#input\_gcp\_services) | API Services to activate | `set(string)` | <pre>[<br>  "container.googleapis.com",<br>  "sqladmin.googleapis.com",<br>  "redis.googleapis.com",<br>  "compute.googleapis.com",<br>  "servicenetworking.googleapis.com"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gcp_provider"></a> [gcp\_provider](#output\_gcp\_provider) | GCP provider YAML |
| <a name="output_gcp_secret"></a> [gcp\_secret](#output\_gcp\_secret) | GCP secrets |

## Authors

Module is maintained by [Kiratech](https://www.kiratech.it/) with help from [these awesome contributors](https://github.com/projectkerberus/terraform-kerberus-dashboard/graphs/contributors).

## License

See [LICENSE](../../LICENSE) for full details.