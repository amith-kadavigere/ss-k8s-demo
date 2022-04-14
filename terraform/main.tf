locals {
  azs                    = ["us-east-1a", "us-east-1b"]
  environment            = "dev"
  kops_state_bucket_name = "${local.environment}-kops-state"
  // Needs to be a FQDN
  kubernetes_cluster_name = "k8s-dev0.singlestore.com"
  ingress_ips             = ["10.0.0.100/32", "10.0.0.101/32"]
  vpc_name                = "${local.environment}-k8s-vpc"

  tags = {
    environment = "${local.environment}"
    terraform   = true
    Owner       = "amithtkm"
    Project     = "Kubernetes DR testing"
    Cost Center = "PS"
  }
}

data "aws_region" "current" {}