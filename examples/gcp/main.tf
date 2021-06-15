provider "kubernetes" {
  config_path = var.PATH_KUBECONFIG
  insecure    = var.INSECURE_KUBECONFIG
}

provider "helm" {
  kubernetes {
    config_path = var.PATH_KUBECONFIG
  }
}

provider "google" {
  project     = var.GCP_PROJECT
  region      = var.GCP_REGION
  zone        = var.GCP_ZONE
  credentials = file(var.GCP_SA_KEY_PATH)
}

module "gcp_crossplane" {
  source = "../../modules/gcp-crossplane"
}

module "crossplane" {
  source = "../../"

  depends_on = [
    module.gcp_crossplane
  ]

  path_kubeconfig = var.PATH_KUBECONFIG

  crossplane_providers = { "gcp-provider" : module.gcp_crossplane.provider }
  crossplane_secrets   = { "gcp-creds" : module.gcp_crossplane.secret }
}
 