# This module intended to add minio in onpremise kubernetes setup and will do the following: 
* Create Minio database 

## Example 1 

```
module "minio" {
    source = "dasmeta/onpremise/onpremise//modules/minio"

    helm_set = [
                    {
                    name  = "persistence.existingClaim"
                    value = "minio-pvc"
                    }
                ]

    app_version = "8.0.3"

}
```

## Example 2 

```
module "minio" {
    source = "dasmeta/onpremise/onpremise//modules/minio"

    helm_set = [
                    {
                    name  = "persistence.existingClaim"
                    value = "minio-pvc"
                    }
                ]

    app_version = "8.0.3"
    name        = ""
    deploy      = 1
    create_namespace = true
    force_update     = true
    wait             = false
    recreate_pods    = false
}
```