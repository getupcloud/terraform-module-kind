terraform {
  required_providers {
    cronitor = {
      source = "nauxliu/cronitor"
      #     version = "1.0.8"
    }

    shell = {
      source = "scottwinkler/shell"
      #      version = "1.7.2"
    }

    kubectl = {
      source = "gavinbunney/kubectl"
      #      version = "~> 1"
    }

    random = {
      #      version = "~> 2"
    }
  }
}
