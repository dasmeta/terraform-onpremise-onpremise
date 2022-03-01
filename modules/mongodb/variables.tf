
variable "rootpassword" {
  type        = string
  description = "MUST WRITE ROOTPASSWORD"
}

variable "pvcsize" {
  type        = string
  description = "PVC Size"
  default     = "8Gi"
}

variable "architecture" {
  type    = string
  default = "replicaset"
}
