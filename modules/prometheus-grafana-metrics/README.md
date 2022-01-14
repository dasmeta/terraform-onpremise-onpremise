# This module intended to add Prometheus and Grafana in onpremise kubernetes setup and will do the following: 
* Create Prometheus for monitoring kubernetes cluster
* Create grafana for visulated prometheus and elasticsearch metrics


## minimal module setup
```terraform
module "prometheus-grafana-metrics" {
    source = "dasmeta/onpremise/onpremise//modules/prometheus-grafana-metrics"
    version = "0.1.0"
}
```