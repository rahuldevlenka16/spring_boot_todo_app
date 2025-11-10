Spring Boot Todo App with Docker, Helm, and Kubernetes

This repository contains a simple Spring Boot based Todo application. The application is containerized using Docker, and Kubernetes deployment configurations are provided for deploying it on a Kubernetes cluster. Additionally, Helm templates are included for easier deployment management.

Project Structure:
The project is divided into several branches to support different deployment methods.

Branches:

| Branch / Feature | Description | Status |
|------------------|-------------|---------|
| `master` | Original Spring Boot Todo application source code | ✅ Completed |
| `docker` | Dockerfile + docker-compose for Spring Boot app and MySQL | ✅ Completed |
| `k8s` | Kubernetes manifests (Deployments, Services, PVCs, Secrets) | ✅ Completed |
| `helm` | Helm charts and templates for configurable Kubernetes deployment and monitoring using prebuilt Helm charts | ✅ Completed |
| `terraform_eks` | Terraform configuration for provisioning an AWS EKS cluster to deploy this application | ✅ Completed |
| `github_action` | CI/CD workflow: build Docker image, run tests, and push to DockerHub/registry | ✅ Completed  |
| `argo_cd` | GitOps deployment using Argo CD for automated sync to the cluster | ✅ Completed |

---

Each branch focuses on a specific aspect of the DevOps lifecycle — from **application containerization** and **Kubernetes deployment** to **infrastructure provisioning** and **GitOps automation**.
