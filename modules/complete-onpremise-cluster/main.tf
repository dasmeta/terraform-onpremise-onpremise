module cluster-provisioner  {
    source = "../k8s-cluster"

    create          = var.create
    reset           = var.reset
    upgrade-cluster = var.upgrade-cluster
    command         = var.command
}
module cert-manager  {
    source = "../cert-manager"
}

module alertmanager  {
    source = "../alertmanager"
}

module prometheus-grafana-metrics  {
    source = "../prometheus-grafana-metrics"
}

module rancher  {
    source = "../rancher"
}
