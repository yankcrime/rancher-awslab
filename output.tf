output "rancher_nodes" {
  value = module.rancher_infra.rancher_nodes
}

resource "local_file" "clusteryml" {
  content  = templatefile("cluster.yml.tpl", { nodes = module.rancher_infra.rancher_nodes, kubernetes_version = var.kubernetes_version })
  filename = "cluster.yml"
}

#output "rke_cluster" {
#  value = module.rke-cluster.kubeconfig_api_server_url
#}
#
#output "rke_kubeconfig" {
#  value = module.rke-cluster.kubeconfig_yaml
#}
#
