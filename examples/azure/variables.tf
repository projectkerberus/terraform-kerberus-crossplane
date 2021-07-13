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
  description = ""
  type        = string
}

variable "ARM_CLIENT_ID" {
  description = ""
  type        = string
}

variable "ARM_CLIENT_SECRET" {
  description = ""
  type        = string
}

variable "ARM_TENANT_ID" {
  description = ""
  type        = string
}