variable "app_version" {
  type        = string
  default     = "2.6.5"
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
  type        = any
  default     = {}
  description = "The resources container"
}

variable "resources_requests" {
  type        = any
  default     = {}
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
# Grafana User
variable "gf_username" {
  default = "admin"
}

variable "gf_password" {
  default = "Dun8OAYtLBmomYAB7Fsp50GkKsQI"
}

# Grafana databases
variable "auth_postgresPassword" {
  default = "977Opp2Yl6X"
}

variable "db_user" {
  default = "grafana"
}

variable "db_password" {
  default = "977Opp2Yl6X"
}

variable "db_name" {
  default = "grafana"
}

variable "db_type" {
  default = "postgres"
}

variable "db_ssl_mode" {
  default = "disable"
}

variable "db_host" {
  default = "postgresql:5432"
}
