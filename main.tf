module "rancher_infra" {
  source = "github.com/yankcrime/tf-module-rancher-infra-aws"

  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_region     = var.aws_region
  prefix         = var.aws_prefix

  node_master_count = var.node_master_count
  node_worker_count = var.node_worker_count
  node_all_count    = var.node_all_count

  # deploy_lb = true  # Deploy NLB pointing to nodes with worker role
  # route53_zone = "my.org"  # Use route53 zone to add registry
  # route53_name = "rancher-ha"        
}

#module "rke-cluster" {
#  source = "github.com/yankcrime/tf-module-rke-cluster"
#
#  rke_nodes = module.rancher_infra.rancher_nodes
#
#  rke = {
#    cluster_name       = var.cluster_name
#    kubernetes_version = var.kubernetes_version
#  }
#}
