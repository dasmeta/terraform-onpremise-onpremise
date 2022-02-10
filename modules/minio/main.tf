module minio {
  source  = "terraform-module/release/helm"
  version = "2.7.0"


  namespace  = "minio"
  repository =  "https://helm.min.io/"


  app = {
    name          = "minio"
    version       = "8.0.3"
    chart         = "minio"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }


  set = [
    {
      name  = "persistence.size"
      value = "8Gi"
    },
    {
      name  = "mountPath"
      value = "/data"
    }

  ]
}
