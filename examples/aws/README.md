# Basic Example

A very simple and basic example with fake data. 

## Usage

1. Put the `KUBECONFIG` file in the same folder of the example with the name `config`.

2. Put the [aws credential file](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) file in the same folder of the example with the name `creds`

3. Execute:

```bash
terraform init
terraform plan
terraform apply
```

4. Terraform will ask for a gcp Project id to use