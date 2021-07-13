# Basic Example

A very simple and basic example with fake data. 

## Usage

1. Put the `KUBECONFIG` file in the same folder of the example with the name `config`.

2. Create a `terraform.tfvars` with the following variables: 

```bash
ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
ARM_CLIENT_SECRET="00000000-0000-0000-0000-000000000000"
ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
```

as [here explained](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)

> Your Service Principal must have permissions to both `Read and write all applications` and `Sign in and read user profile` within the Windows Azure Active Directory API.

1. Execute:

```bash
terraform init
terraform plan
terraform apply
```
