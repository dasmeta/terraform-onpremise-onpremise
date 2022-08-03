module "grafana-loki" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "loki"
  repository = "https://grafana.github.io/helm-charts"

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

  values = [
    templatefile("${path.module}/values.yaml", {
      resources_requests_cpu    = "${var.resources_requests.cpu}",
      resources_requests_memory = "${var.resources_requests.memory}",
      resources_limits_cpu      = "${var.resources_limits.cpu}",
      resources_limits_memory   = "${var.resources_limits.memory}",
      db_type                   = "${var.db_type}",
      db_ssl_mode               = "${var.db_ssl_mode}"
      db_name                   = "${var.db_name}"
      db_host                   = "${var.db_host}"
      db_user                   = "${var.db_user}"
      db_password               = "${var.db_password}"
    })
  ]

  set = [
    {
      name  = "grafana.enabled"
      value = var.grafana_enabled
    },
    {
      name  = "prometheus.enabled"
      value = var.prometheus_enabled
    },
    {
      name  = "persistence.enabled"
      value = "true"
    },
    {
      name  = "prometheus.alertmanager.persistentVolume.enabled"
      value = var.prometheus_alertmanager_persistentVolume_enabled
    },
    {
      name  = "prometheus.server.persistentVolume.enabled"
      value = var.prometheus_server_persistentVolume_enabled
    }
  ]

  depends_on = [
    kubernetes_secret.grafana
  ]
}
