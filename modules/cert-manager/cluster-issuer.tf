locals {
  solvers = concat(
    var.r53_configs.access_key_id == "" ? [] : [{
      "dns01" = {
        "route53" = {
          "region"       = var.r53_configs.region
          "accessKeyID"  = var.r53_configs.access_key_id
          "hostedZoneID" = var.r53_configs.hosted_zone_id
          "secretAccessKeySecretRef" = {
            "name" = "${var.clusterissuer_name}-aws-r53-secret"
            "key"  = "secret-access-key"
          }
        }
      }
    }],
    var.gcloud_configs.project_id == "" ? [] : [{
      "apiVersion" = "cert-manager.io/v1"
      "kind"       = "ClusterIssuer"
      "metadata" = {
        "name" = var.clusterissuer_name
      }
      "spec" = {
        "acme" = {
          "email" = var.email_address
          "privateKeySecretRef" = {
            "name" = "letsencrypt-prod-gcp"
          }
          "server" = "https://acme-v02.api.letsencrypt.org/directory"
          "solvers" = [
            {
              "dns01" = {
                "cloudDNS" = {
                  "project" = var.gcloud_configs.project_id
                  "serviceAccountSecretRef" = {
                    "name" = "${var.clusterissuer_name}-gcloud-dns-secret"
                    "key"  = "key.json"
                  }
                }
              }
            },
          ]
        }
      }
    }],
    [{
      "http01" = {
        "ingress" = {
          "class" = "nginx"
        }
      }
    }]
  )
}

resource "kubernetes_manifest" "cluster_issuer" {
  manifest = {
    "apiVersion" = "cert-manager.io/v1"
    "kind"       = "ClusterIssuer"
    "metadata" = {
      "name" = var.clusterissuer_name
    }
    "spec" = {
      "acme" = {
        "email" = var.email_address
        "privateKeySecretRef" = {
          "name" = "${var.clusterissuer_name}-secret"
        }
        "server"  = var.server_url
        "solvers" = local.solvers
      }
    }
  }
}
