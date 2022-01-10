module minio {
  source  = "terraform-module/release/helm"
  version = "2.7.0"


  namespace  = "minio"
  repository =  "https://charts.bitnami.com/bitnami"

  app = {
    name          = "minio"
    version       = "9.2.5"
    chart         = "bitnami/minio"
    create_namespace = true
    force_update  = true
    wait          = false
    recreate_pods = false
    deploy        = 1
  }

  set = [
    {
      name  = "persistence.existingClaim"
      value = "task-pv-claim"
    },
    {
      name  = "persistence.storageClass"
      value = "manual"
    }

  ]
    
  set_sensitive = [
    
  ]
}

#helm install minio --set persistence.existingClaim=task-pv-claim --set persistence.storageClass="manual" --set persistence.mountPath=/mnt/data   bitnami/minio   