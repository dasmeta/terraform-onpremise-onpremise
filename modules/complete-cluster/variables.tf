variable "create" {
  type        = string
  description = "create cluster"
  default     = "ansible-playbook -i cluster-config/inventory.ini  --become --become-user=root --user=root --private-key=~/.ssh/id_rsa_emis ./.terraform/modules/kubespray/cluster.yml -e ignore_assert_errors=yes"
}

variable "reset" {
  type        = string
  description = "reset cluster"
  default     = "ansible-playbook -i cluster-config/inventory.ini  --become --become-user=root --user=root --private-key=~/.ssh/id_rsa_emis ./.terraform/modules/kubespray/reset.yml -e ignore_assert_errors=yes"
}

variable "upgrade-cluster" {
  type        = string
  description = "upgrade-cluster"
  default     = "upgrade"
}

variable "command" {
  type        = string
  default     = "update"
  description = "command (create,reset,upgrade-cluster)"
}
