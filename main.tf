resource "kind_cluster" "default" {
  name = var.name
  kubeconfig_path = local.kubeconfig
  wait_for_ready = true
  kind_config {
    kind = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
      image = local.kind_image
    }

    node {
      role = "worker"
      image = local.kind_image
      kubeadm_config_patches = [
          "kind: JoinConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"role=app\"\n"
      ]
    }

    node {
      role = "worker"
      image = local.kind_image
      kubeadm_config_patches = [
          "kind: JoinConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"role=infra\"\n"
      ]
    }
  }
}





# resource "local_file" "kind_config" {
#   content  = local.kind_config
#   filename = var.kind_config
# }

# resource "shell_script" "cluster" {
#   depends_on = [local_file.kind_config]

#   lifecycle_commands {
#     create = var.kind_cluster_create
#     read   = var.kind_cluster_read
#     update = "/bin/false"
#     delete = var.kind_cluster_delete
#   }

#   environment = {
#     CLUSTER_NAME = var.name
#     KIND_CONFIG  = var.kind_config
#     KUBECONFIG   = local.kubeconfig
#   }
# }
