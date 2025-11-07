# Create an EKS cluster using the official Terraform AWS EKS module

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = ">= 20.0.0"

  cluster_name    = var.cluster_name
  cluster_version = "1.28"

  # Let module create a new VPC for simplicity
  create_vpc = true
  vpc_cidr   = "10.0.0.0/16"

  # Managed node group configuration
  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 3
      desired_size = var.desired_capacity

      instance_types = [var.node_instance_type]
    }
  }

  # Tags
  tags = {
    Project = "spring-boot-todo"
    Owner   = "rahul"
    Env     = "dev"
  }
}
