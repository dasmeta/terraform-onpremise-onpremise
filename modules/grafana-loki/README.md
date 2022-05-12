# This module intended to add Ingress controller in onpremise kubernetes setup and will do the following: 

* Create grafana loki for logging kubernetes infrastructure. 

## minimal module setup
```terraform
module "grafana-loki" {
    source = "dasmeta/onpremise/onpremise//modules/grafana-loki"
    version = ""
    resources_requests = {
        cpu    = "250m"
        memory = "64Mi"
    }
    resources_limits = {
        cpu    = "500m"
        memory = "128Mi"
    }
}
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | ~>1.13.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | ~>1.13.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_grafana-loki"></a> [grafana-loki](#module\_grafana-loki) | terraform-module/release/helm | 2.7.0 |

## Resources

| Name | Type |
|------|------|
| [kubectl_manifest.grafana-loki](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_path_documents.grafana-loki](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/path_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_version"></a> [app\_version](#input\_app\_version) | App Chart Version | `string` | `"2.1.2"` | no |
| <a name="input_cluster_issuer"></a> [cluster\_issuer](#input\_cluster\_issuer) | Cluster name ingress will be using to ask certificate from cert-manager for ingress | `string` | `""` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create Namespace | `bool` | `true` | no |
| <a name="input_deploy"></a> [deploy](#input\_deploy) | Deploy | `number` | `1` | no |
| <a name="input_enable_ingress"></a> [enable\_ingress](#input\_enable\_ingress) | n/a | `bool` | `true` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Force Update | `bool` | `true` | no |
| <a name="input_grafana_enabled"></a> [grafana\_enabled](#input\_grafana\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname grafana will be accessed by | `string` | n/a | yes |
| <a name="input_ingress_annotations"></a> [ingress\_annotations](#input\_ingress\_annotations) | (optional) describe your variable | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Application name | `string` | `"loki-stack"` | no |
| <a name="input_prometheus_alertmanager_persistentVolume_enabled"></a> [prometheus\_alertmanager\_persistentVolume\_enabled](#input\_prometheus\_alertmanager\_persistentVolume\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_prometheus_enabled"></a> [prometheus\_enabled](#input\_prometheus\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_prometheus_server_persistentVolume_enabled"></a> [prometheus\_server\_persistentVolume\_enabled](#input\_prometheus\_server\_persistentVolume\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | Recreate pods | `bool` | `false` | no |
| <a name="input_resources_limits"></a> [resources\_limits](#input\_resources\_limits) | The resources container | `any` | <pre>{<br>  "cpu": "500m",<br>  "memory": "256M"<br>}</pre> | no |
| <a name="input_resources_requests"></a> [resources\_requests](#input\_resources\_requests) | The resources container | `any` | <pre>{<br>  "cpu": "250m",<br>  "memory": "256M"<br>}</pre> | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Wait | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
