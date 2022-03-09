module "grafana-loki" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "loki"
  repository = "https://grafana.github.io/loki/charts"

  app = {
    name             = var.name
    version          = var.app_version
    chart            = "loki-stack"
    create_namespace = var.create_namespace
    force_update     = var.force_update
    wait             = var.wait
    recreate_pods    = var.recreate_pods
    deploy           = var.deploy
  }

  set = [
    {
      name  = "grafana.enabled"
      value = var.grafana_enabled
    }
  ]
}
