locals {
  route53_vars = {
    clusterissuer_name            = var.clusterissuer_name
    email_address                 = var.email_address
    region                        = var.r53_configs.region
    accesskeyid                   = var.r53_configs.access_key_id
    hostedzoneid                  = var.r53_configs.hosted_zone_id
    secretaccesskeysecretref_name = "${var.clusterissuer_name}-aws-r53-secret"
    secretaccesskeysecretref_key  = "key.json"
  }
  gcloud_vars = {
    clusterissuer_name            = var.clusterissuer_name
    email_address                 = var.email_address
    project                       = var.gcloud_configs.project_id
    secretaccesskeysecretref_name = "${var.clusterissuer_name}-gcloud-dns-secret"
    secretaccesskeysecretref_key  = "key.json"
  }
}

data "kubectl_path_documents" "cluster_issuer" {
  count = var.r53_configs.access_key_id == "" ? 1 : 0

  pattern = var.r53_configs.access_key_id == "" ? "${path.module}/cluster_issuer_gcloud.yaml" : "${path.module}/cluster_issuer_route53.yaml"
  vars    = var.r53_configs.access_key_id == "" ? local.gcloud_vars : local.route53_vars
}

resource "kubectl_manifest" "cluster_issuer" {
  count     = length(data.kubectl_path_documents.cluster_issuer[0].documents)
  yaml_body = element(data.kubectl_path_documents.cluster_issuer[0].documents, count.index)

  depends_on = [
    module.cert-manager
  ]
}
