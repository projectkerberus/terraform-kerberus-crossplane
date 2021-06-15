provider "kubernetes" {
  config_path = var.PATH_KUBECONFIG
  insecure    = var.INSECURE_KUBECONFIG
}

provider "helm" {
  kubernetes {
    config_path = var.PATH_KUBECONFIG
  }
}


provider "aws" {
  region = var.AWS_REGION
}


module "aws_crossplane" {
  source = "../../modules/aws-crossplane"
}

module "crossplane" {
  source = "../../"

  depends_on = [
    module.aws_crossplane
  ]

  path_kubeconfig = var.PATH_KUBECONFIG

  crossplane_providers = { "aws-provider" : module.aws_crossplane.provider }
  crossplane_secrets   = { "aws-creds" : module.aws_crossplane.secret }
}
 