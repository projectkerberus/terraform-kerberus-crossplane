terraform {
  required_version = ">= 1.0.0"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.3.2"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.63.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "1.5.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}