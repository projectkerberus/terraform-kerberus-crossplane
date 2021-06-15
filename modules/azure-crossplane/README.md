# Terraform Kerberus Azure Crossplane

Terraform module which configure Azure for Crossplane. 

## Usage

```hcl
module "kerberus_azure_crossplane" {
  source = "project-kerberus/azure_crossplane/kerberus"

  path_kubeconfig =  "~/.kube/config"
}
```
## Examples

* [Azure](../../examples/azure/)

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 1.5.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 2.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 1.5.1 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.main](https://registry.terraform.io/providers/hashicorp/azuread/1.5.1/docs/resources/application) | resource |
| [azuread_application_password.main](https://registry.terraform.io/providers/hashicorp/azuread/1.5.1/docs/resources/application_password) | resource |
| [azuread_service_principal.main](https://registry.terraform.io/providers/hashicorp/azuread/1.5.1/docs/resources/service_principal) | resource |
| [azuread_service_principal_password.main](https://registry.terraform.io/providers/hashicorp/azuread/1.5.1/docs/resources/service_principal_password) | resource |
| [azurerm_role_assignment.main](https://registry.terraform.io/providers/hashicorp/azurerm/2.63.0/docs/resources/role_assignment) | resource |
| [random_id.main](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_app_id"></a> [azure\_app\_id](#input\_azure\_app\_id) | Azure Resource to require access | `string` | `"00000002-0000-0000-c000-000000000000"` | no |
| <a name="input_crossplane_registry"></a> [crossplane\_registry](#input\_crossplane\_registry) | registry for the azure Crossplane package | `string` | `"crossplane/provider-azure:v0.18.1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_provider"></a> [provider](#output\_provider) | Azure provider YAML |
| <a name="output_secret"></a> [secret](#outpute\_secret) | Azure secrets |
