terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.63.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "1.5.1"
    }
  }
}
