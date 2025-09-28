# Spring Boot Todo App – Kubernetes Deployment

This branch demonstrates deploying a **Spring Boot Todo application** with a **MySQL database** on a Kubernetes cluster. It uses **Deployments, Services, Persistent Volumes, and Secrets** to showcase a production-like setup.

---

## 🚀 Features

* **Todo App** deployed as a Spring Boot container (3 replicas)
* **MySQL Database** with persistent storage (PV + PVC)
* **Secrets** for database credentials
* **InitContainers** for dependency handling (waiting for MySQL, fixing `lost+found` issues)
* **NodePort Service** for external app access

---

## 📂 Kubernetes Manifests

* `appdeploy.yaml` → Deploys the Todo app with 3 replicas
* `appservice.yaml` → Exposes the app on NodePort `30007` (mapped to `9067`)
* `dbdeploy.yaml` → MySQL deployment with PVC + initContainer fix
* `dbservice.yaml` → ClusterIP service for internal MySQL access
* `dvpv.yaml` → PersistentVolume (1Gi, hostPath)
* `dbpvc.yaml` → PersistentVolumeClaim (1Gi)
* `secret.yaml` → Encoded MySQL root password & database name

---

## 🛠️ How to Deploy

1. Clone the repo and switch to the `k8s` branch:

   ```bash
   git checkout k8s
   ```

2. Apply the manifests in order:

   ```bash
   kubectl apply -f secret.yaml
   kubectl apply -f dvpv.yaml
   kubectl apply -f dbpvc.yaml
   kubectl apply -f dbdeploy.yaml
   kubectl apply -f dbservice.yaml
   kubectl apply -f appdeploy.yaml
   kubectl apply -f appservice.yaml
   ```

3. Access the application:

  Open (http://localhost:30007) if using NodePort.
---

## 📌 Notes

* Database password is base64-encoded in `secret.yaml`.
* `wait-for-mysql` initContainer ensures the app only starts once MySQL is reachable.
* Persistent storage ensures MySQL data survives pod restarts.
* For production, replace `hostPath` PV with a cloud storage class (EBS, GCE, AzureDisk).
