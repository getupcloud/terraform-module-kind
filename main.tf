resource "kind_cluster" "cluster" {
  name            = var.name
  kubeconfig_path = local.kubeconfig_filename
  wait_for_ready  = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role                   = "control-plane"
      image                  = local.kind_image
      kubeadm_config_patches = var.kubeadm_config_patches.master
    }

    node {
      role                   = "worker"
      image                  = local.kind_image
      kubeadm_config_patches = var.kubeadm_config_patches.infra
    }

    node {
      role                   = "worker"
      image                  = local.kind_image
      kubeadm_config_patches = var.kubeadm_config_patches.app
    }
  }
}
