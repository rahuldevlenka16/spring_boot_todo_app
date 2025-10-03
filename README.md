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
