module "grafana-loki" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "loki"
  repository = "https://grafana.github.io/loki/charts"

  app = {
    name             = "loki-stack"
    version          = "2.1.2"
    chart            = "loki-stack"
    create_namespace = true
    force_update     = true
    wait             = false
    recreate_pods    = false
    deploy           = 1
  }

  set = [
    {
     name = "grafana.enabled"
     value = "true"     
    }
  ]
}
