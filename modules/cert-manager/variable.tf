variable "clusterissuer_name" {
  type    = string
  default = "clusterissuer"
}

variable "email_address" {
  type    = string
  default = "aram.m@dasmeta.com"
}

variable "server_url" {
  type    = string
  default = "https://acme-v02.api.letsencrypt.org/directory"
}

variable "r53_configs" {
  type = object({
    access_key_id        = string
    secret_access_key_id = string
    region               = string
    hosted_zone_id       = string
  })
  description = "AWS R53 dns validation configs"
  default = {
    access_key_id        = ""
    hosted_zone_id       = ""
    region               = ""
    secret_access_key_id = ""
  }
}

variable "gcloud_configs" {
  type = object({
    project_id = string
    secret_key = string
    # region         = string
    # hosted_zone_id = string
  })
  description = "Google Cloud DNS validation configs"
  default = {
    project_id = ""
    secret_key = ""
    # region               = ""
    # secret_access_key_id = ""
  }
}

variable "k8s_config_path" {
  type    = string
  default = "~/.kube/config"
}
