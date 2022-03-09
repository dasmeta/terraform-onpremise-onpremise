variable "app_version" {
  type        = string
  default     = "2.5.1"
  description = "Keda App Chart Version"
}
variable "name" {
  type        = string
  default     = "keda"
  description = "Application name"
}
variable "influxdb_enabled" {
  type    = bool
  default = true
}
variable "persistence_enabled" {
  type    = bool
  default = false
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

variable "grafana_enabled" {
  type        = bool
  default     = true
  description = "Grafana Enabled"
}
