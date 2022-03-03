resource "kubernetes_secret" "gcloud_dns_secret_access_key" {
  count = var.gcloud_configs.project_id == "" ? 0 : 1

  metadata {
    name      = "${var.clusterissuer_name}-gcloud-dns-secret"
    namespace = "cert-manager"
  }

  data = {
    "key.json" = var.gcloud_configs.secret_key
  }

  type = "Opaque"

  depends_on = [
    module.cert-manager
  ]
}
