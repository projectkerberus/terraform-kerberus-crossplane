variable "PATH_KUBECONFIG" {
  description = "A path to a kube config file."
  type        = string
  default     = "./config"
}

variable "INSECURE_KUBECONFIG" {
  description = "Whether the server should be accessed without verifying the TLS certificate"
  type        = bool
  default     = false
}

variable "AWS_REGION" {
  description = "AWS resource region"
  default     = "eu-central-1"
}

variable "AWS_CREDS_PATH" {
  type        = string
  description = "AWS credential file"
  default     = "./creds"
}

