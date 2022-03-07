variable "mode" {
  type        = string
  default     = "distributed"
  description = "MinIO server mode (standalone or distributed)"
}

variable "app_version" {
  type        = string
  default     = "10.1.16"
  description = "Minio App Chart Version"
}

variable "name" {
  type        = string
  default     = "minio"
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
