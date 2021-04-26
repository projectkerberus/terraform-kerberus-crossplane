provider "kubernetes" {
  config_path = var.PATH_KUBECONFIG
  insecure    = var.INSECURE_KUBECONFIG
}

provider "helm" {
  kubernetes {
    config_path = var.PATH_KUBECONFIG
  }
}

module "crossplane" {
  source = "../../"

  path_kubeconfig = var.PATH_KUBECONFIG
}
 