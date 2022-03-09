# This module intended to add keda in onpremise kubernetes setup and will do the following: 

## minimal module setup
```terraform
module "keda" {
    source = "dasmeta/onpremise/onpremise//modules/keda"
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
```