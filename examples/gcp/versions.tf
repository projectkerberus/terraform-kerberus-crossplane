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
    google = {
      source  = "hashicorp/google"
      version = "3.71.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}