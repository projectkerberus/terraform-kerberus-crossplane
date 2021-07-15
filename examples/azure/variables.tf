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

variable "ARM_SUBSCRIPTION_ID" {
  description = "The Subscription ID which should be used."
  type        = string
}

variable "ARM_CLIENT_ID" {
  description = "The Client ID which should be used. "
  type        = string
}

variable "ARM_CLIENT_SECRET" {
  description = "The Client Secret which should be used."
  type        = string
}

variable "ARM_TENANT_ID" {
  description = "The Tenant ID should be used."
  type        = string
}