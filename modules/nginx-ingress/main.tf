module ingress-nginx {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "ingress-nginx-2"
  repository =  "https://charts.bitnami.com/bitnami"

  app = {
    name          = "ingress-nginx"
    version       = "9.0.10"
    chart         = "nginx-ingress-controller"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }
set = [
    {
      name  = "kind"
      value = "DaemonSet"
    },
    {
      name  = "daemonset.useHostPort"
      value = "true"
    },
    {
      name  = "ingressClassResource.default"
      value = "true"
    }
  ]

  set_sensitive = [
    
  ]
}
