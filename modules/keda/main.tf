module "keda" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "keda"
  repository =  "https://kedacore.github.io/charts"

  app = {
    name          = "keda"
    version       = "2.5.1"
    chart         = "keda"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }
}
