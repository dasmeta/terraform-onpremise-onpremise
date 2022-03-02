# This module intended to add minio in onpremise kubernetes setup and will do the following: 
* Create Minio database 

## minimal module setup


```terraform
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