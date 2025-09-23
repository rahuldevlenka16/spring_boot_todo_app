Spring Boot Todo App with Docker, Helm, and Kubernetes

This repository contains a simple Spring Boot based Todo application. The application is containerized using Docker, and Kubernetes deployment configurations are provided for deploying it on a Kubernetes cluster. Additionally, Helm templates are included for easier deployment management.

Project Structure

The project is divided into several branches to support different deployment methods:

Branches

docker: Contains the Dockerfile and docker-compose.yml to run the Spring Boot application and MySQL database inside Docker containers.

helm: Includes Helm charts and templates to deploy the application in Kubernetes using Helm.

k8s: Contains the Kubernetes manifests, such as Deployment, Service, PVC, and Secrets for both the Spring Boot application and MySQL database.

master: Holds the original code for the Spring Boot Todo application.
