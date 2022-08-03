module "postgress" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = "loki"
  repository = "https://charts.bitnami.com/bitnami"

  app = {
    name             = "postgresql"
    version          = "11.6.21"
    chart            = "postgresql"
    create_namespace = var.create_namespace
    force_update     = var.force_update
    wait             = var.wait
    recreate_pods    = var.recreate_pods
    deploy           = var.deploy
  }

  set = [
    {
      name  = "global.postgresql.auth.postgresPassword"
      value = var.auth_postgresPassword
    },
    {
      name  = "global.postgresql.auth.username"
      value = var.db_user
    },
    {
      name  = "global.postgresql.auth.password"
      value = var.db_password
    },
    {
      name  = "global.postgresql.auth.database"
      value = var.db_name
    }
  ]
}
