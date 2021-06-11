provider "kubernetes" {
  config_path = var.PATH_KUBECONFIG
  insecure    = var.INSECURE_KUBECONFIG
}

provider "helm" {
  kubernetes {
    config_path = var.PATH_KUBECONFIG
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

provider "azuread" {
  # Configuration options
}

module "azure_crossplane" {
  source = "../../modules/azure-crossplane"
}

module "crossplane" {
  source = "../../"

  depends_on = [
    module.azure_crossplane
  ]

  path_kubeconfig = var.PATH_KUBECONFIG

  crossplane_providers = { "azure-provider" : module.azure_crossplane.azure_provider }
  crossplane_secrets   = { "azure-creds" : module.azure_crossplane.azure_secret }
}
 