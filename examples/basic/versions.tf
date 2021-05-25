terraform {
  required_version = ">= 0.14.08"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.0.3"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.0.3"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}