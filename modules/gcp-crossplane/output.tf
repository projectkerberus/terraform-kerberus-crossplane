output "gcp_provider" {
  description = "GCP provider YAML"
  value = templatefile(join("/", [path.module, "./files/gcp-provider-template.yml"]), {
    crossplane_registry = var.crossplane_registry
  })
}

output "gcp_secret" {
  description = "GCP secrets"
  value       = base64decode(google_service_account_key.crossplan_key.private_key)
}