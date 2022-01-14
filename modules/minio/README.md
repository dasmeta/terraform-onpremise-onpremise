# This module intended to add minio in onpremise kubernetes setup and will do the following: 
* Create Minio database 

## minimal module setup
```terraform
module "minio" {
    source = "dasmeta/onpremise/onpremise//modules/minio"
    version = "0.1.0"
}
```