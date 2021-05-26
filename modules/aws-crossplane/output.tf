output "aws_provider" {
  description = "AWS provider YAML"
  value = templatefile(join("/", [path.module, "./files/aws-provider-template.yml"]), {
    crossplane_registry = var.crossplane_registry
  })
}

output "aws_secret" {
  description = "AWS secrets"
  value       = join("\n",["[default]","aws_access_key_id = ${aws_iam_access_key.crossplane.id}","aws_secret_access_key = ${aws_iam_access_key.crossplane.secret}"])
  sensitive = true
}

