module "fission" {
  source     = "terraform-module/release/helm"
  version    = "2.7.0"
  namespace  = "fission"
  repository = "https://fission.github.io/fission-charts"

  app = {
    name             = var.name
    version          = var.app_version
    chart            = "fission-all"
    create_namespace = var.create_namespace
    force_update     = var.force_update
    wait             = var.wait
    recreate_pods    = var.recreate_pods
    deploy           = var.deploy
  }
  values = [
    templatefile("${path.module}/values.yaml", { resources_requests_cpu = "${var.resources_requests.cpu}", resources_requests_memory = "${var.resources_requests.memory}", resources_limits_cpu = "${var.resources_limits.cpu}", resources_limits_memory = "${var.resources_limits.memory}" })
  ]

  set = [
    {
      name  = "influxdb.enabled"
      value = var.influxdb_enabled
    },
    {
      name  = "persistence.enabled"
      value = var.persistence_enabled
    }
  ]
}
