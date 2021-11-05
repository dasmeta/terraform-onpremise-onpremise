resource "null_resource" "create" {
    count = var.command == "create" ? 1 : 0
  provisioner "local-exec" {
    command = var.create
  }
}

resource "null_resource" "reset" {
    count = var.command == "reset" ? 1 : 0
  provisioner "local-exec" {
    command = var.reset
  }
}

resource "null_resource" "upgrade-cluster" {
    count = var.command == "upgrade-cluster" ? 1 : 0
  provisioner "local-exec" {
    command = var.upgrade-cluster
  }
}
