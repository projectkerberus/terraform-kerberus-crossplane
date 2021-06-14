output "azure_provider" {
  description = "Azure provider YAML"
  value = templatefile(join("/", [path.module, "./files/azure-provider-template.yml"]), {
    crossplane_registry = var.crossplane_registry
  })
}

output "azure_secret" {
  description = "Azure secrets"
  value       = join("\n", ["{ ", " \"clientId\": \"${azuread_application.main.application_id}\",", " \"clientSecret\": \"${azuread_application_password.main.value}\",", " \"subscriptionId\": \"${data.azurerm_subscription.main.subscription_id}\",", " \"tenantId\": \"${data.azurerm_client_config.current.tenant_id}\",", " \"activeDirectoryEndpointUrl\": \"https://login.microsoftonline.com\",", " \"resourceManagerEndpointUrl\": \"https://management.azure.com/\",", " \"activeDirectoryGraphResourceId\": \"https://graph.windows.net/\",", " \"sqlManagementEndpointUrl\": \"https://management.core.windows.net:8443/\",", " \"galleryEndpointUrl\": \"https://gallery.azure.com/\",", " \"managementEndpointUrl\": \"https://management.core.windows.net/\"", "}"])
  sensitive   = true
}

