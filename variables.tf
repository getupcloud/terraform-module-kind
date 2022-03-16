variable "name" {
  description = "Kind cluster name"
  type        = string
  default     = "kind"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.20"
}

variable "kubeconfig_filename" {
  description = "Path for default kubeconfig"
  type        = string
  default     = "~/.kube/config"
}

variable "kubeadm_config_patches" {
  description = "Patches to apply on each node group"
  default = {
    master : []

    infra : [
    <<-EOT
      kind: JoinConfiguration
      nodeRegistration:
        kubeletExtraArgs:
          node-labels: "role=infra"
    EOT
    ]

    app : [
    <<-EOT
      kind: JoinConfiguration
      nodeRegistration:
        kubeletExtraArgs:
          node-labels: "role=app"
    EOT
    ]
  }
}
