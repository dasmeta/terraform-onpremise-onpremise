data "kubectl_path_documents" "cert-manager-crds" {
  pattern = "https://github.com/jetstack/cert-manager/releases/download/v1.7.1/cert-manager.crds.yaml"
}

resource "kubectl_manifest" "cert-manager-crds" {
  count     = length(data.kubectl_path_documents.cert-manager-crds.documents)
  yaml_body = element(data.kubectl_path_documents.cert-manager-crds.documents, count.index)
}

module "cert-manager" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "cert-manager"
  repository = "https://charts.jetstack.io"

  app = {
    name             = "cert-manager"
    version          = "1.9.1"
    chart            = "cert-manager"
    create_namespace = true
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
  }

  set = [
    {
      name  = "labels.kubernetes\\.io/name"
      value = "cert-manager"
    },
    {
      name  = "service.labels.kubernetes\\.io/name"
      value = "cert-manager"
    },
    {
      name  = "installCRDs"
      value = "true"
    }
  ]

  set_sensitive = [

  ]

  depends_on = [
    kubectl_manifest.cert-manager-crds
  ]
}
