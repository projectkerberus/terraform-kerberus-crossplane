# Basic Example

A very simple and basic example with fake data. 

## Usage

1. Put the `KUBECONFIG` file in the same folder of the example with the name `config`.

2. Ensure your environment has defined the following variable 

```bash
ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
ARM_CLIENT_SECRET="00000000-0000-0000-0000-000000000000"
ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
```

as [here explained](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret)

3. Execute:

```bash
terraform init
terraform plan
terraform apply
```
