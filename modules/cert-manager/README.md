# This module intended to add certificate controler in onpremise kubernetes setup and will do the following: 
* Create Cert-manager for getting free certificates from Letsencript
* Create secret acces key for connecting AWS Route53 service
* Create ClusterIssuer for getting certificate HTTP validation or DNS validation

## minimal module setup
```terraform
module "cert_manager" {
    source = "dasmeta/onpremise/onpremise//modules/cert-manager"
    version = "0.1.0"

    clusterissuer_name = "my-cluster-issuer"
    email_address = "my@email.address"

    r53_configs = {
        access_key_id        = "aws access key id"
        secret_access_key_id = "aws secret key"
        region               = "aws region"
        hosted_zone_id       = "hosted_zone_id"
    }
    // or
    gcloud_configs = {
        project_id = "gcloud project id"
        secret_key = "base64(gcloud service account key)"
    }
}
```