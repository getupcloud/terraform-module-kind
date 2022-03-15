# version 2.0
output "name" {
  value = var.name
}

output "kubeconfig" {
  value = local.kubeconfig
}

output "kubeconfig_data" {
  value = kind_cluster.default.kubeconfig
}

output "api_endpoint" {
  value = kind_cluster.default.endpoint
}

output "certificate_authority_data" {
  value = kind_cluster.default.cluster_ca_certificate
}

output "client_certificate_data" {
  value = kind_cluster.default.client_certificate
}

output "client_key_data" {
  value = kind_cluster.default.client_key
}




# output "kubeconfig_data" {
#   value = shell_script.cluster.output["kubeconfig_data"]
# }

# output "api_endpoint" {
#   value = shell_script.cluster.output["api_endpoint"]
# }

# output "certificate_authority_data" {
#   value = shell_script.cluster.output["certificate_authority_data"]
# }

# output "client_certificate_data" {
#   value = shell_script.cluster.output["client_certificate_data"]
# }

# output "client_key_data" {
#   value = shell_script.cluster.output["client_key_data"]
# }
