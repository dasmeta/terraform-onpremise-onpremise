# This module intended to add Ingress controller in onpremise kubernetes setup and will do the following: 

* Create Nginx Ingress controller for exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. 
* Traffic routing is controlled by rules defined on the Ingress resource.

## minimal module setup
```terraform
module "nginx-ingress" {
    source = "dasmeta/onpremise/onpremise//modules/nginx-ingress"
    version = "0.1.0"
}
```