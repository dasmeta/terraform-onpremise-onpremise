# This module intended to add keda in onpremise kubernetes setup and will do the following: 

## minimal module setup
```terraform
module "keda" {
    source = "dasmeta/onpremise/onpremise//modules/keda"
    version = "0.1.0"
}
```