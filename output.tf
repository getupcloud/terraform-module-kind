output "name" {
  value = var.name
}

output "kubeconfig" {
  value = local.kubeconfig
}

output "kubeconfig_data" {
  value = shell_script.cluster.output["kubeconfig_data"]
}

output "api_endpoint" {
  value = shell_script.cluster.output["api_endpoint"]
}

output "certificate_authority_data" {
  value = shell_script.cluster.output["certificate_authority_data"]
}

output "client_certificate_data" {
  value = shell_script.cluster.output["client_certificate_data"]
}

output "client_key_data" {
  value = shell_script.cluster.output["client_key_data"]
}
