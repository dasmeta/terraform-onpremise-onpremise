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