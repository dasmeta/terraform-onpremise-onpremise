variable "helm_set" {
  type = any
  default = [
    {
      name  = "persistence.existingClaim"
      value = "minio-pvc"
    }
  ]
  description = "Set helm values"
}

variable "app_version" {
  type        = string
  default     = "8.0.3"
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
