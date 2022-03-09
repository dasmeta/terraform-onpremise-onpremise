# This module intended to add minio in onpremise kubernetes setup and will do the following: 
* Create Minio database 

## Example 1 

```
module "minio" {
    source = "dasmeta/onpremise/onpremise//modules/minio"
}
```

## Example 2 

```
module "minio" {
    source = "dasmeta/onpremise/onpremise//modules/minio"

    mode = "distributed"
    app_version = "10.1.16"
    name        = "distributed"
    deploy      = 1
    create_namespace = true
    force_update     = true
    wait             = false
    recreate_pods    = false
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