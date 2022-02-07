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
