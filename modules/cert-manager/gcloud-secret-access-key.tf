resource "kubernetes_secret" "gcloud_dns_secret_access_key" {
  count = var.r53_configs.access_key_id == "" ? 0 : 1

  metadata {
    name      = "${var.clusterissuer_name}-gcloud-dns-secret"
    namespace = "cert-manager"
  }

  data = {
    "key.json" = var.gcloud_configs.secret_key
  }

  type = "Opaque"
}
