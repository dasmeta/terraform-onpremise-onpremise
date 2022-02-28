
# Example 1 
```

module "kubespray" {
  source = "git::https://github.com/kubernetes-sigs/kubespray.git?ref=release-2.17" 
}

module cluster-provisioner  {
    source = "dasmeta/onpremise/onpremise//modules/complete-cluster"
}

```

# Example 2

```hct

module "kubespray" {
  source = "git::https://github.com/kubernetes-sigs/kubespray.git?ref=release-2.17" 
}

module cluster-provisioner  {
    source = "dasmeta/onpremise/onpremise//modules/complete-cluster"

    command         = "upgrade-cluster"
    reset           = ""
    upgrade-cluster = ""
    create          = ""
}

```