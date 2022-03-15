terraform {
  required_providers {
    kind = {
      source = "kyma-incubator/kind"
      version = "0.0.11"
    }
  }
}

provider "kind" {
  # Configuration options
}

# terraform {
#   required_providers {
#     kubectl = {
#       source  = "gavinbunney/kubectl"
#       version = "~> 1"
#     }

#     shell = {
#       source  = "scottwinkler/shell"
#       version = "~> 1"
#     }
#   }
# }
