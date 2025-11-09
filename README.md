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
  
  <img width="842" height="275" alt="image" src="https://github.com/user-attachments/assets/6c9bcd9c-e5c7-4007-9292-e4a518f6a07d" />

Update Helm Job:

  

