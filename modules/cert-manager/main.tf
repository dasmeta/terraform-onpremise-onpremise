module "cert-manager" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "cert-manager"
  repository = "https://charts.jetstack.io"

  app = {
    name             = "cert-manager"
    version          = "1.6.1"
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
}
