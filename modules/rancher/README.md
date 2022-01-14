# This module intended to add rancher in onpremise kubernetes setup and will do the following: 

## minimal module setup
```terraform
module "rancher" {
    source = "dasmeta/onpremise/onpremise//modules/rancher"
    version = "0.1.0"
}
```