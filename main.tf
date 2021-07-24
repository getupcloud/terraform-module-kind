resource "local_file" "kind_config" {
  content  = local.kind_config
  filename = var.kind_config
}

resource "shell_script" "cluster" {
  depends_on = [local_file.kind_config]

  lifecycle_commands {
    create = var.kind_cluster_create
    read   = var.kind_cluster_read
    update = "/bin/false"
    delete = var.kind_cluster_delete
  }

  environment = {
    CLUSTER_NAME = var.name
    KIND_CONFIG  = var.kind_config
    KUBECONFIG   = local.kubeconfig
  }
}
