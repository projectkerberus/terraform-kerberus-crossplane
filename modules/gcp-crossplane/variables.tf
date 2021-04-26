variable "gcp_service_account_id" {
  description = "SA id to be created to be used by Crossplane GCP Provider"
  default     = "kerberus-crossplane"
}

variable "gcp_service_account_name" {
  description = "SA name to be created to be used by Crossplane GCP Provider"
  default     = "Kerberus Crossplane Service Account"
}

variable "gcp_services" {
  description = "API Services to activate"
  type        = set(string)
  default     = ["container.googleapis.com", "sqladmin.googleapis.com", "redis.googleapis.com", "compute.googleapis.com", "servicenetworking.googleapis.com"]
}

variable "gcp_roles" {
  description = "GCP Roles to assigne at the created service account"
  type        = set(string)
  default     = ["roles/iam.serviceAccountUser", "roles/cloudsql.admin", "roles/container.admin", "roles/redis.admin", "roles/compute.networkAdmin", "roles/storage.admin"]
}

variable "crossplane_registry" {
  description = "registry for the gcp Crossplane package"
  type        = string
  default     = "ghcr.io/projectkerberus/provider-gcp:v0.17.1"
}
