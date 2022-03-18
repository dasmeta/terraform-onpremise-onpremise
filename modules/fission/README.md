# This module intended to add fission in onpremise kubernetes setup and will do the following: 

## minimal module setup
```terraform
module "fission" {
    source = "dasmeta/onpremise/onpremise//modules/fission"
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