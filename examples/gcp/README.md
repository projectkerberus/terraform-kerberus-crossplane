# Basic Example

A very simple and basic example with fake data. 

## Usage

1. Put the `KUBECONFIG` file in the same folder of the example with the name `config`.

2. Put the [service account key](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) file in the same folder of the example with the name `service-account.json`

3. Execute:

```bash
terraform init
terraform plan
terraform apply
```

4. Terraform will ask for a gcp Project id to use