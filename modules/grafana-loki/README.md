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

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_grafana-loki"></a> [grafana-loki](#module\_grafana-loki) | terraform-module/release/helm | 2.7.0 |
| <a name="module_postgress"></a> [postgress](#module\_postgress) | terraform-module/release/helm | 2.7.0 |

## Resources

| Name | Type |
|------|------|
| [kubernetes_secret.grafana](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_version"></a> [app\_version](#input\_app\_version) | App Chart Version | `string` | `"2.6.5"` | no |
| <a name="input_auth_postgresPassword"></a> [auth\_postgresPassword](#input\_auth\_postgresPassword) | Grafana databases | `string` | `"977Opp2Yl6X"` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create Namespace | `bool` | `true` | no |
| <a name="input_db_host"></a> [db\_host](#input\_db\_host) | n/a | `string` | `"postgresql:5432"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `string` | `"grafana"` | no |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | n/a | `string` | `"977Opp2Yl6X"` | no |
| <a name="input_db_ssl_mode"></a> [db\_ssl\_mode](#input\_db\_ssl\_mode) | n/a | `string` | `"disable"` | no |
| <a name="input_db_type"></a> [db\_type](#input\_db\_type) | n/a | `string` | `"postgres"` | no |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | n/a | `string` | `"grafana"` | no |
| <a name="input_deploy"></a> [deploy](#input\_deploy) | Deploy | `number` | `1` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Force Update | `bool` | `true` | no |
| <a name="input_gf_password"></a> [gf\_password](#input\_gf\_password) | n/a | `string` | `"Dun8OAYtLBmomYAB7Fsp50GkKsQI"` | no |
| <a name="input_gf_username"></a> [gf\_username](#input\_gf\_username) | Grafana User | `string` | `"admin"` | no |
| <a name="input_grafana_enabled"></a> [grafana\_enabled](#input\_grafana\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Application name | `string` | `"loki-stack"` | no |
| <a name="input_prometheus_alertmanager_persistentVolume_enabled"></a> [prometheus\_alertmanager\_persistentVolume\_enabled](#input\_prometheus\_alertmanager\_persistentVolume\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_prometheus_enabled"></a> [prometheus\_enabled](#input\_prometheus\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_prometheus_server_persistentVolume_enabled"></a> [prometheus\_server\_persistentVolume\_enabled](#input\_prometheus\_server\_persistentVolume\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | Recreate pods | `bool` | `false` | no |
| <a name="input_resources_limits"></a> [resources\_limits](#input\_resources\_limits) | The resources container | `any` | `{}` | no |
| <a name="input_resources_requests"></a> [resources\_requests](#input\_resources\_requests) | The resources container | `any` | `{}` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Wait | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->