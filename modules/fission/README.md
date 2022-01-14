# This module intended to add fission in onpremise kubernetes setup and will do the following: 

## minimal module setup
```terraform
module "fission" {
    source = "dasmeta/onpremise/onpremise//modules/fission"
    version = "0.1.0"
}
```