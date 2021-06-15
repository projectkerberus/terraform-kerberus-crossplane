# Terraform Kerberus Crossplane

Terraform module which deploys Crossplane on your Kubernetes cluster. 

> This module is part of the [Kerberus Platform](https://github.com/projectkerberus/kerberus-platform)  

## Usage

```hcl
module "kerberus_crossplane" {
  source = "project-kerberus/crossplane/kerberus"

  crossplane_provider = "{crossplane/provider-gcp:v0.15.0,crossplane/provider-helm:v0.5.0}"
}
```

## Examples

* [Basic](./examples/basic)
* [GCP](./examples/gcp)
* [AWS](./examples/aws)
* [Azure](./examples/azure)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.3.2 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.2.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.3.2 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.crossplane](https://registry.terraform.io/providers/hashicorp/helm/2.0.3/docs/resources/release) | resource |
| [kubernetes_namespace.crossplane_namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/2.0.3/docs/resources/namespace) | resource |
| [kubernetes_secret.create_credentials](https://registry.terraform.io/providers/hashicorp/kubernetes/2.0.3/docs/resources/secret) | resource |
| [null_resource.install_providers](https://registry.terraform.io/providers/hashicorp/null/3.1.0/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_crossplane_chart"></a> [crossplane\_chart](#input\_crossplane\_chart) | crossplane chart name to be installed. | `string` | `"crossplane"` | no |
| <a name="input_crossplane_chart_version"></a> [crossplane\_chart\_version](#input\_crossplane\_chart\_version) | Specify the exact crossplane chart version to install. If this is not specified, the latest version is installed. | `string` | `null` | no |
| <a name="input_crossplane_namespace"></a> [crossplane\_namespace](#input\_crossplane\_namespace) | The name of crossplane namespace for the Kerberus dashboard. | `string` | `"crossplane-system"` | no |
| <a name="input_crossplane_providers"></a> [crossplane\_providers](#input\_crossplane\_providers) | A map of Provider packages yaml to install on Crossplane. Where the key is the provider name and the value is the corrispondig YAML file. | `map(string)` | `{}` | no |
| <a name="input_crossplane_repository"></a> [crossplane\_repository](#input\_crossplane\_repository) | Repository URL where to locate the crossplane chart | `string` | `"https://charts.crossplane.io/stable"` | no |
| <a name="input_crossplane_secrets"></a> [crossplane\_secrets](#input\_crossplane\_secrets) | A map of secrets to create for Crossplane. Where the key is the secret name and the value is the credential. | `map(string)` | `{}` | no |
| <a name="input_crossplane_values_path"></a> [crossplane\_values\_path](#input\_crossplane\_values\_path) | crossplane helm chart values.yaml path. | `string` | `""` | no |
| <a name="input_path_kubeconfig"></a> [path\_kubeconfig](#input\_path\_kubeconfig) | path kubeconfig | `string` | n/a | yes |

## Outputs

No outputs.

## Authors

The module is maintained by [Kiratech](https://www.kiratech.it/) with help from [these awesome contributors](https://github.com/projectkerberus/terraform-kerberus-dashboard/graphs/contributors).

## License

See [LICENSE](./LICENSE) for full details.