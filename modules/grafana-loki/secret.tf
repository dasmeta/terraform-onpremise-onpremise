resource "kubernetes_secret" "grafana" {
  metadata {
    name      = "grafana-auth"
    namespace = "loki"
  }

  data = {
    admin-user     = var.gf_username
    admin-password = var.gf_password
  }

}
