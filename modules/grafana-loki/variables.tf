variable "app_version" {
  type        = string
  default     = "2.1.2"
  description = "App Chart Version"
}

variable "name" {
  type        = string
  default     = "loki-stack"
  description = "Application name"
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Create Namespace"
}

variable "force_update" {
  type        = bool
  default     = true
  description = "Force Update"
}

variable "wait" {
  type        = bool
  default     = false
  description = "Wait"
}

variable "recreate_pods" {
  type        = bool
  default     = false
  description = "Recreate pods"
}

variable "deploy" {
  type        = number
  default     = 1
  description = "Deploy"
}
variable "resources_limits" {
  type = any
  default = {
    cpu    = "500m"
    memory = "256M"
  }
  description = "The resources container"
}

variable "resources_requests" {
  type = any
  default = {
    cpu    = "250m"
    memory = "256M"
  }
  description = "The resources container"
}

variable "grafana_enabled" {
  type    = bool
  default = true
}

variable "prometheus_enabled" {
  type    = bool
  default = true
}

variable "prometheus_alertmanager_persistentVolume_enabled" {
  type    = bool
  default = true
}

variable "prometheus_server_persistentVolume_enabled" {
  type    = bool
  default = true
}

variable "enable_ingress" {
  type    = bool
  default = true
}

variable "cluster_issuer" {
  type        = string
  default     = ""
  description = "Cluster name ingress will be using to ask certificate from cert-manager for ingress"
}

variable "hostname" {
  type        = string
  description = "The hostname grafana will be accessed by"
}

variable "ingress_annotations" {
  type        = list(any)
  default     = []
  description = "(optional) describe your variable"
}
