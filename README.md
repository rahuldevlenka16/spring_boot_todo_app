This GitHub Actions CI/CD pipeline builds, tests, and scans a Java application.

Pipeline Overview

The pipeline consists of two jobs:

1. **compile-test-package-upload**:

   * Compiles the app with Maven.
   * Runs unit tests.
   * Packages the app as a JAR.
   * Uploads the build artifact.

2. **security-scan**:

   * Scans dependencies for vulnerabilities using OWASP Dependency-Check.
   * Uploads the security report.

## Trigger

The pipeline runs on a `push` to the `github_action` branch.

## Artifacts

* **app-package**: The JAR file from the build.
* **dependency-report**: The HTML report from the security scan.

## Requirements

* Java 17 (via `actions/setup-java`).
* Maven for building.
* OWASP Dependency-Check for security scanning.

Below are the screenshots 

<img width="940" height="437" alt="image" src="https://github.com/user-attachments/assets/7c4bdd62-c184-4ae8-aa0b-a446121b4dd0" />
<img width="1123" height="577" alt="image" src="https://github.com/user-attachments/assets/57896dcd-b570-4b6b-baad-7fbf1db506e9" />
<img width="1114" height="598" alt="image" src="https://github.com/user-attachments/assets/4ba742e9-86f3-43f5-a35e-e0cacdbd8e9c" />

