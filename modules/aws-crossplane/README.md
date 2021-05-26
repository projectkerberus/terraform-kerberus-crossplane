# Terraform Kerberus AWS Crossplane

Terraform module which configure the Kerberus Crossplane for AWS.

## Usage

```hcl
module "kerberus_aws_crossplane" {
  source = "project-kerberus/aws_crossplane/kerberus"

  path_kubeconfig =  "~/.kube/config"
}
```

## Examples

* [AWS](../../examples/aws/)
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.08 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.42.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.42.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.crossplane](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/iam_access_key) | resource |
| [aws_iam_user.crossplane](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.EKS](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/iam_user_policy) | resource |
| [aws_iam_user_policy_attachment.crossplane_policy](https://registry.terraform.io/providers/hashicorp/aws/3.42.0/docs/resources/iam_user_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_iam_user"></a> [aws\_iam\_user](#input\_aws\_iam\_user) | AWS Iam user to be created to be used by Crossplane AWS Provider | `string` | `"kerberus-crossplane"` | no |
| <a name="input_aws_policy"></a> [aws\_policy](#input\_aws\_policy) | AWS Policy to assigne at the created IAM user | `set(string)` | <pre>[<br>  "arn:aws:iam::aws:policy/AmazonRDSFullAccess",<br>  "arn:aws:iam::aws:policy/AmazonEC2FullAccess",<br>  "arn:aws:iam::aws:policy/AmazonVPCFullAccess",<br>  "arn:aws:iam::aws:policy/IAMFullAccess"<br>]</pre> | no |
| <a name="input_crossplane_registry"></a> [crossplane\_registry](#input\_crossplane\_registry) | registry for the aws Crossplane package | `string` | `"crossplane/provider-aws:master"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_provider"></a> [aws\_provider](#output\_aws\_provider) | AWS provider YAML |
| <a name="output_aws_secret"></a> [aws\_secret](#output\_aws\_secret) | AWS secrets |

## Authors

Module is maintained by [Kiratech](https://www.kiratech.it/) with help from [these awesome contributors](https://github.com/projectkerberus/terraform-kerberus-dashboard/graphs/contributors).

## License

See [LICENSE](../../LICENSE) for full details.