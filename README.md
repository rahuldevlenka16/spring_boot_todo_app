## EKS Cluster Setup using Terraform

This Terraform project creates an **Amazon EKS (Elastic Kubernetes Service)** cluster on AWS along with managed node groups.  
It serves as the base infrastructure for deploying applications — using Helm or `kubectl`.

Architecture 
![alt text](image.png)

It starts with Terraform, which uses infrastructure-as-code to define and deploy resources on AWS. Through Terraform scripts, AWS services are configured to create an Amazon EKS cluster — a managed Kubernetes control plane. Finally, within EKS, a Node Group (a set of EC2 instances) is launched to serve as worker nodes where Kubernetes pods and applications run. This setup automates the infrastructure layer, allowing developers to manually deploy and manage applications on top of the ready EKS cluster.

---
## 🛠️ Prerequisites
Before running Terraform, ensure the following:
    • AWS CLI installed and configured 
        ○ aws configure
    • The IAM user should have permissions to create VPCs, EKS clusters, IAM roles, and EC2 instances.
    • Terraform installed (>= 1.4.0)
        ○ terraform -version
    • kubectl installed for cluster interaction
        ○ kubectl version --client
    • Helm installed
        ○ helm version

⚙️ Configuration
You can modify default values in variables.tf or override them via CLI:
Variable	Description	Default
aws_region	AWS region to deploy resources	ap-south-1
cluster_name	Name of the EKS cluster	todoapp-eks
node_instance_type	EC2 instance type for worker nodes	t3.medium
desired_capacity	Desired number of worker nodes	2
        
Example:

terraform apply -var="cluster_name=my-cluster" -var="desired_capacity=3"

Infra provisioning steps

    1. Initialize Terraform
terraform init
    2. Preview the changes
terraform plan
    3. Apply and create the cluster
terraform apply

Type yes when prompted.
    4. Update your kubeconfig
aws eks update-kubeconfig --region ap-south-1 --name todoapp-eks
    5. Verify cluster access
kubectl get nodes

Infra Cleanup
To destroy all AWS resources created by Terraform:
terraform destroy
    ⚠️ Warning: This will remove the entire EKS cluster, VPC, and all associated resources.

Notes
    • The VPC, subnets, security groups, IAM roles, and node groups are all provisioned automatically by the terraform-aws-modules/eks/aws module.
    • Kubernetes version defaults to 1.28 but can be updated in main.tf.
    • The setup uses EKS Managed Node Groups, simplifying lifecycle management for worker nodes.
    • Suitable for personal projects, learning, and demo deployments.

🧾 Reference
    • Terraform AWS Provider
    • Terraform AWS EKS Module
    • Amazon EKS Documentation
    • Helm Documentation

Author: Rahul Dev Lenka
Branch: terraform_eks
Purpose: Foundation for deploying containerized apps on AWS EKS using Terraform.

