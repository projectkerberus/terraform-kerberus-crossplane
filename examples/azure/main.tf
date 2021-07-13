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
  features {}

  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
}

provider "azuread" {
  client_id     = var.ARM_CLIENT_ID
  client_secret = var.ARM_CLIENT_SECRET
  tenant_id     = var.ARM_TENANT_ID
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

  crossplane_providers = { "azure-provider" : module.azure_crossplane.provider }
  crossplane_secrets   = { "azure-creds" : module.azure_crossplane.secret }
}
 