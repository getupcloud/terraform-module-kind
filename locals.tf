locals {
  kubeconfig = abspath(pathexpand(var.kubeconfig))

  # https://github.com/kubernetes-sigs/kind/releases
  kind_image_versions = {
    "1.20" : "kindest/node:v1.20.7@sha256:cbeaf907fc78ac97ce7b625e4bf0de16e3ea725daf6b04f930bd14c67c671ff9",
    "1.19" : "kindest/node:v1.19.7@sha256:a70639454e97a4b733f9d9b67e12c01f6b0297449d5b9cbbef87473458e26dca",
    "1.18" : "kindest/node:v1.18.15@sha256:5c1b980c4d0e0e8e7eb9f36f7df525d079a96169c8a8f20d8bd108c0d0889cc4",
    "1.17" : "kindest/node:v1.17.17@sha256:7b6369d27eee99c7a85c48ffd60e11412dc3f373658bc59b7f4d530b7056823e",
    "1.16" : "kindest/node:v1.16.15@sha256:c10a63a5bda231c0a379bf91aebf8ad3c79146daca59db816fb963f731852a99",
    "1.15" : "kindest/node:v1.15.12@sha256:67181f94f0b3072fb56509107b380e38c55e23bf60e6f052fbd8052d26052fb5",
    "1.14" : "kindest/node:v1.14.10@sha256:3fbed72bcac108055e46e7b4091eb6858ad628ec51bf693c21f5ec34578f6180"
  }

  kind_image  = lookup(local.kind_image_versions, var.kubernetes_version)
  # kind_config = templatefile("${path.module}/${var.kind_config}.tpl", { kind_image = local.kind_image })
}
