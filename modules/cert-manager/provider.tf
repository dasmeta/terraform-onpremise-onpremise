terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
    }
  }
}

provider "kubectl" {
  config_path = pathexpand("${var.k8s_config_path}")
}

provider "kubernetes" {
  config_path = pathexpand("${var.k8s_config_path}")
}
