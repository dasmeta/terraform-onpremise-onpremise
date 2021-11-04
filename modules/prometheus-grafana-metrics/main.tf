module kube-prometheus-stack {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "monitoring"
  repository =  "https://prometheus-community.github.io/helm-charts"

  app = {
    name          = "kube-prometheus-stack"
    version       = "19.2.2"
    chart         = "kube-prometheus-stack"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }

  set = [
    {
      name  = "labels.kubernetes\\.io/name"
      value = "prometheus"
    },
    {
      name  = "service.labels.kubernetes\\.io/name"
      value = "prometheus"
    }
  ]

  set_sensitive = [
    
  ]
}
