module fission {
  source  = "terraform-module/release/helm"
  version = "2.7.0"
  namespace  = "fission"
  repository =  "https://fission.github.io/fission-charts"

  app = {
    name          = "fission"
    version       = "1.15.1"
    chart         = "fission-all"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }
}