variable "crossplane_namespace" {
  description = "The name of crossplane namespace for the Kerberus dashboard."
  type        = string
  default     = "crossplane-system"
}

variable "crossplane_repository" {
  description = "Repository URL where to locate the crossplane chart"
  type        = string
  default     = "https://charts.crossplane.io/stable"
}

variable "crossplane_chart" {
  description = "crossplane chart name to be installed."
  type        = string
  default     = "crossplane"
}

variable "crossplane_chart_version" {
  description = "Specify the exact crossplane chart version to install. If this is not specified, the latest version is installed."
  type        = string
  default     = null
}

variable "crossplane_values_path" {
  description = "crossplane helm chart values.yaml path."
  type        = string
  default     = ""
}

variable "crossplane_secrets" {
  description = "A map of secrets to create for Crossplane. Where the key is the secret name and the value is the credential."
  type        = map(string)
  default     = {}
}

variable "crossplane_providers" {
  description = "A map of Provider packages yaml to install on Crossplane. Where the key is the provider name and the value is the corrispondig YAML file."
  type        = map(string)
  default     = {}
}

variable "path_kubeconfig" {
  description = "path kubeconfig"
  type        = string
}