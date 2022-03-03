resource "kubernetes_secret" "aws_route53_secret_access_key" {
  count = var.r53_configs.access_key_id == "" ? 0 : 1

  metadata {
    name      = "${var.clusterissuer_name}-aws-r53-secret"
    namespace = "cert-manager"
  }

  data = {
    secret-access-key = var.r53_configs.secret_access_key_id
  }

  type = "Opaque"

  depends_on = [
    module.cert-manager
  ]
}
