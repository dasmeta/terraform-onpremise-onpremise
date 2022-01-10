variable "create" {
    type = string
    description = "create cluster"
}
variable "reset" {
    type = string
    description = "reset cluster"
}
variable "upgrade-cluster" {
    type = string
    description = "upgrade-cluster"
}
variable "command" {
    type = string
    description = "command (create,reset,upgrade-cluster)"
}
