variable "azure_app_id" {
  description = "Azure Resource to require access"
  default     = "00000002-0000-0000-c000-000000000000"
}
variable "crossplane_registry" {
  description = "registry for the azure Crossplane package"
  type        = string
  default     = "ghcr.io/projectkerberus/provider-azure:v0.16.1"
}

