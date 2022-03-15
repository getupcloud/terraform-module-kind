# version 2.0
variable "name" {
  description = "Kind cluster name"
  type        = string
  default     = "kind"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
}

variable "kubeconfig" {
  description = "Path for default kubeconfig"
  type        = string
  default     = "~/.kube/config"
}

# variable "kind_config" {
#   description = "Path for kind config file"
#   type        = string
#   default     = "./kind.yaml"
# }

# variable "kind_cluster_create" {
#   description = "Script to create the kind cluster"
#   type        = string
#   default     = <<-EOF
#     # create cluster
#     set -eu
#     {
#       date
#       kind create cluster --config $KIND_CONFIG --name $CLUSTER_NAME
#       KUBECONFIG_DATA=$(kind get kubeconfig --name $CLUSTER_NAME || true)
#       API_ENDPOINT=$(echo -e "$KUBECONFIG_DATA" | awk '/server:/{print $NF}' || true)
#       CERTIFICATE_AUTHORITY_DATA=$(echo -e "$KUBECONFIG_DATA" | awk '/certificate-authority-data:/{print $NF}' || true)
#       CLIENT_CERTIFICATE_DATA=$(echo -e "$KUBECONFIG_DATA" | awk '/client-certificate-data:/{print $NF}' || true)
#       CLIENT_KEY_DATA=$(echo -e "$KUBECONFIG_DATA" | awk '/client-key-data:/{print $NF}' || true)
#     } &>kind.log

#     cat <<DATA
#     {
#         "kind_config": "$KIND_CONFIG",
#         "kubeconfig_data": "$KUBECONFIG_DATA",
#         "kubeconfig": "$KUBECONFIG",
#         "api_endpoint": "$API_ENDPOINT",
#         "certificate_authority_data": "$CERTIFICATE_AUTHORITY_DATA",
#         "client_certificate_data": "$CLIENT_CERTIFICATE_DATA",
#         "client_key_data": "$CLIENT_KEY_DATA"
#     }
#     DATA
#   EOF
# }

# variable "kind_cluster_read" {
#   description = "Script to read state of the kind cluster"
#   type        = string
#   default     = <<-EOF
#     # read cluster
#     set -eu
#     KUBECONFIG_DATA=$(kind get kubeconfig --name $CLUSTER_NAME 2>/dev/null || true)
#     API_ENDPOINT=$(echo -e "$KUBECONFIG_DATA" | awk '/server:/{print $NF}' || true)
#     CERTIFICATE_AUTHORITY_DATA=$(echo -e "$KUBECONFIG_DATA" | awk '/certificate-authority-data:/{print $NF}' || true)
#     CLIENT_CERTIFICATE_DATA=$(echo -e "$KUBECONFIG_DATA" | awk '/client-certificate-data:/{print $NF}' || true)
#     CLIENT_KEY_DATA=$(echo -e "$KUBECONFIG_DATA" | awk '/client-key-data:/{print $NF}' || true)
#     cat <<DATA
#     {
#         "kind_config": "$KIND_CONFIG",
#         "kubeconfig_data": "$KUBECONFIG_DATA",
#         "kubeconfig": "$KUBECONFIG",
#         "api_endpoint": "$API_ENDPOINT",
#         "certificate_authority_data": "$CERTIFICATE_AUTHORITY_DATA",
#         "client_certificate_data": "$CLIENT_CERTIFICATE_DATA",
#         "client_key_data": "$CLIENT_KEY_DATA"
#     }
#     DATA
#   EOF
# }

# variable "kind_cluster_delete" {
#   description = "Script to delete the kind cluster"
#   type        = string
#   default     = <<-EOF
#     # delete cluster
#     set -eu
#     kind delete cluster --name $CLUSTER_NAME >&2
#     echo {}
#   EOF
# }
