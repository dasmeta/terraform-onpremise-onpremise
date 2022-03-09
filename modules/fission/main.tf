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
