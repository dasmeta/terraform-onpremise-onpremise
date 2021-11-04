resource "null_resource" "cluster-provisioning" {
  triggers = {
    project_id = google_project.my_project.project_id
  }

  provisioner "local-exec" {
    command = <<-EOC
ansible-playbook -i ${var.inventory}  --become --become-user=root --user=${var.vm-user} --private-key=${var.private-key} kubespray/create.yml -e ignore_assert_errors=yes
EOC
  }
  
  provisioner "local-exec" {
    when    = destroy
    command = <<-EOD
ansible-playbook -i ${var.inventory}  --become --become-user=root --user=${var.vm-user} --private-key=${var.private-key} kubespray/reset.yml -e ignore_assert_errors=yes
EOD
  }
}
