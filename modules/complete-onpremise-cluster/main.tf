module cluster-provisioner  {
    source = "../k8s-cluster"

    create          = var.create
    reset           = var.reset
    upgrade-cluster = var.upgrade-cluster
    command         = var.command
}
module install-helm-cert-manager  {
    source = "../cert-manager"
}

module install-helm-alertmanager  {
    source = "../alertmanager"
}

module install-helm-prometheus-grafana-metrics  {
    source = "../prometheus-grafana-metrics"
}

module install-helm-rancher  {
    source = "../rancher"
}
