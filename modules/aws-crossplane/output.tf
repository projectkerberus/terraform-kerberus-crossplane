output "gcp_provider" {
  description = "GCP provider YAML"
  value = templatefile(join("/", [path.module, "./files/aws-provider-template.yml"]), {
    crossplane_registry = var.crossplane_registry
  })
}

output "aws_access_key_id" {
  value = aws_iam_access_key.crossplane.id
}

output "aws_secret_access_key" {
  value = aws_iam_access_key.crossplane.secret
  sensitive = true
}

