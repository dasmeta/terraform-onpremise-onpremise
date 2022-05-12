data "kubectl_path_documents" "grafana-loki" {
  pattern = "${path.module}/grafana-loki-ingress.yaml"

  vars = {
    cluster_issuer = var.cluster_issuer
    hostname       = var.hostname
  }
}

resource "kubectl_manifest" "grafana-loki" {
  count     = var.enable_ingress ? 1 : 0
  yaml_body = element(data.kubectl_path_documents.grafana-loki.documents, count.index)

  depends_on = [
    module.grafana-loki
  ]
}
