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

variable "GCP_PROJECT" {
  description = "GCP project for crossplane resources"
}

variable "GCP_REGION" {
  description = "GCP resource region"
  default     = "europe-west3"
}

variable "GCP_ZONE" {
  description = "GCP resource zone"
  default     = "europe-west3-a"
}

variable "GCP_SA_KEY_PATH" {
  type        = string
  description = "GCP service account key"
  default     = "./service-account.json"
}

