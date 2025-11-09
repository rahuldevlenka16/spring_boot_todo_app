## ⚙️ CI/CD with GitHub Actions

The `cicd` branch contains a full GitHub Actions pipeline that:

1. Builds the Spring Boot app with Maven
2. Runs unit tests
3. Builds and pushes a Docker image to DockerHub
4. Automatically updates the image tag in Helm chart (`values.yaml`)

> Image is tagged with `${{ github.run_id }}` for traceable, unique builds.

### ✅ Prerequisites (Secrets)

- `DOCKERHUB_USERNAME` — your DockerHub username
- `DOCKERHUB_TOKEN` — a DockerHub access token/password
- `TOKEN` — a GitHub [Personal Access Token (PAT)](https://github.com/settings/tokens) with repo write access (for committing Helm chart updates)



Screenshots:

Build job:

![alt text](image-4.png)


Push job:
  
  <img width="757" height="651" alt="image" src="https://github.com/user-attachments/assets/e61b2f71-98cd-4cc2-878f-0715f649a304" />
  
  
  It pushed the docker image
  
  <img width="828" height="327" alt="image" src="https://github.com/user-attachments/assets/93a020f4-e9f3-4fc0-84dd-ac96e14ab3ca" />


Update Helm Job:

  <img width="450" height="445" alt="image" src="https://github.com/user-attachments/assets/c83a6a88-9168-4626-9028-cc75d0f48091" />

  It updated the helm chart values as per the last pushed tag 
  
  <img width="1056" height="161" alt="image" src="https://github.com/user-attachments/assets/7f7d1326-71ab-40c7-b974-6ac700f28a67" />
  
  <img width="426" height="275" alt="image" src="https://github.com/user-attachments/assets/6d5e82db-f716-43c2-bb19-8221ccc71757" />

  
  

