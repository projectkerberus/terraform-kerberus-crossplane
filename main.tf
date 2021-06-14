resource "kubernetes_namespace" "crossplane_namespace" {
  metadata {
    name = var.crossplane_namespace
  }
}


resource "helm_release" "crossplane" {
  name         = "crossplane"
  namespace    = kubernetes_namespace.crossplane_namespace.metadata[0].name
  repository   = var.crossplane_repository
  chart        = var.crossplane_chart
  version      = var.crossplane_chart_version
  values       = var.crossplane_values_path != "" ? [file(var.crossplane_values_path)] : []
  force_update = true
}

resource "kubernetes_secret" "create_credentials" {
  for_each = var.crossplane_secrets

  metadata {
    name      = each.key
    namespace = var.crossplane_namespace
  }
  data = {
    "credentials" = each.value
  }
}

resource "null_resource" "install_providers" {
  depends_on = [
    helm_release.crossplane
  ]

  for_each = var.crossplane_providers

  triggers = {
    kubeconfig  = abspath(var.path_kubeconfig)
    yaml_string = each.value
  }

  provisioner "local-exec" {
    command = format("echo '%s' | kubectl --kubeconfig=%s apply -f -", self.triggers.yaml_string, self.triggers.kubeconfig)
  }

  provisioner "local-exec" {
    when    = destroy
    command = format("echo '%s' | kubectl --kubeconfig=%s delete -f -", self.triggers.yaml_string, self.triggers.kubeconfig)
  }
}