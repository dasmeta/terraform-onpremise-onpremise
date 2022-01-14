# This module intended to add certificate controler in onpremise kubernetes setup and will do the following: 
* Create Cert-manager for getting free certificates from Letsencript
* Create secret acces key for connecting AWS Route53 service
* Create ClusterIssuer for getting certificate HTTP validation or DNS validation

## minimal module setup
```terraform
module "cert_manager" {
    source = "dasmeta/onpremise/onpremise//modules/cert-manager"
    version = "0.1.0"
}
```