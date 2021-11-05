```hct

module "kubespray" {
  source = "git::https://github.com/kubernetes-sigs/kubespray.git?ref=release-2.17" 
}

module cluster-provisioner  {
    source = ""

    command       = "upgrade-cluster"
    reset           = var.reset
    upgrade-cluster = var.upgrade-cluster
    create          = var.create
}

```
