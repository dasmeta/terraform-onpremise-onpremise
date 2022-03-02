variable "helm_set" {
  type = string
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
