terraform {
  required_version = ">= 0.14.08"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.62.0"
    }
  }
}