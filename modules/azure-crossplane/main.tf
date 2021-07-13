data "azurerm_client_config" "current" {}

data "azuread_application" "current" {
  application_id = data.azurerm_client_config.current.client_id
}

resource "azuread_application_password" "main" {
  application_object_id = data.azuread_application.current.object_id
  end_date_relative     = "8760h"
}
