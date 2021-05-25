terraform {
  required_version = ">= 0.14.08"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}