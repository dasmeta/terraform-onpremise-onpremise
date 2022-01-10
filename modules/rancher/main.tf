module rancher {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "cattle-system"
  repository =  "https://releases.rancher.com/server-charts/stable"

  app = {
    name          = "rancher"
    version       = "2.6.2"
    chart         = "rancher"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }

  set = [
     {
      name  = "labels.kubernetes\\.io/name"
      value = "rancher"
    },
    {
      name  = "service.labels.kubernetes\\.io/name"
      value = "rancher"
    },
    {
      name  = "hostname"
      value = "rancher.devops.dasmeta.com"
    },
    {
      name  = "ingress.tls.source"
      value = "letsEncrypt"
    },
    {
      name  = "letsEncrypt.email"
      value = "mher@dasmeta.com"
    }
  ]

  set_sensitive = [
    
  ]
}
