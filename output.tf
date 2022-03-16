output "name" {
  value = var.name
}

output "kubeconfig_filename" {
  value = local.kubeconfig_filename
}

output "kubeconfig_data" {
  value = kind_cluster.cluster.kubeconfig
}

output "api_endpoint" {
  value = kind_cluster.cluster.endpoint
}

output "certificate_authority_data" {
  value = kind_cluster.cluster.cluster_ca_certificate
}

output "client_certificate_data" {
  value = kind_cluster.cluster.client_certificate
}

output "client_key_data" {
  value = kind_cluster.cluster.client_key
}
