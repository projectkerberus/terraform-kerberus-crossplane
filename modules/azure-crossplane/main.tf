# Import subscription data
data "azurerm_subscription" "main" {
}
data "azurerm_client_config" "current" {
}

# Create Azure AD App random name

resource "random_id" "main" {
  byte_length = 8
  prefix      = "kerberus-"
}

# Create Azure AD App
resource "azuread_application" "main" {
  display_name = random_id.main.hex
  required_resource_access {
    resource_app_id = var.azure_app_id

    resource_access {
      id   = "1cda74f2-2616-4834-b122-5cb1b07f8a59"
      type = "Role"
    }
    resource_access {
      id   = "78c8a3c8-a07e-4b9e-af1b-b5ccab50a175"
      type = "Role"
    }

  }

}

# Create Service Principal associated with the Azure AD App
resource "azuread_service_principal" "main" {
  application_id = azuread_application.main.application_id
}

# Create Service Principal password
resource "azuread_service_principal_password" "main" {
  service_principal_id = azuread_service_principal.main.id
  # value                = "${random_string.password.result}"
  end_date_relative = "17520h"
}

# Create App password
resource "azuread_application_password" "main" {
  application_object_id = azuread_application.main.object_id
  # value              = "${random_string.password.result}"
  end_date_relative = "8760h"
}

# Create role assignment for service principal
resource "azurerm_role_assignment" "main" {
  scope                = data.azurerm_subscription.main.id
  role_definition_name = "Owner"
  principal_id         = azuread_service_principal.main.id
  provisioner "local-exec" {
    command = "az ad app permission admin-consent --id ${azuread_application.main.application_id}"
  }
}
