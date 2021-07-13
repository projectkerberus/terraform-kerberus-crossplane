output "provider" {
  description = "Azure provider YAML"
  value = templatefile(join("/", [path.module, "./files/azure-provider-template.yml"]), {
    crossplane_registry = var.crossplane_registry
  })
}

output "secret" {
  description = "Azure secret"
  value = templatefile(join("/", [path.module, "./files/azure-secret.json"]), {
    client_id : data.azurerm_client_config.current.client_id
    client_secret : azuread_application_password.main.value
    subscription_id : data.azurerm_client_config.current.subscription_id
    tenant_id : data.azurerm_client_config.current.tenant_id
  })
  sensitive = true
}

