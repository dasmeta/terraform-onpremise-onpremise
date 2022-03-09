variable "app_version" {
  type        = string
  default     = "1.15.1"
  description = "App Chart Version"
}

variable "name" {
  type        = string
  default     = "fission"
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

variable "influxdb_enabled" {
  type    = bool
  default = true
}

variable "persistence_enabled" {
  type    = bool
  default = false
}
