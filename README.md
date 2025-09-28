# Spring Boot Todo App – Dockerized

This branch demonstrates how to containerize a **Spring Boot Todo application** and run it with **MySQL** using Docker and Docker Compose.

## 🚀 Features

* Spring Boot backend packaged as a Docker image
* MySQL 8 as the database
* Persistent storage using Docker volumes
* Service-to-service networking with Docker Compose

## 🛠️ How to Run

1. Clone the repo and switch to the `docker` branch:

   ```bash
   git clone https://github.com/rahuldevlenka16/spring_boot_todo_app.git
   cd spring_boot_todo_app
   git checkout docker
   ```

2. Start the containers:

   ```bash
   docker compose up --build -d
   ```

3. Access the app:

   * Application → http://localhost:9067
   * MySQL exposed internally (not published to host)

## 📂 Compose Setup

* **todoapp** → Spring Boot app running on port `9099` (mapped to host `9067`)
* **todomysql** → MySQL 8.0.33 with database `tododb`
* **tododbvol** → Docker volume for persistent MySQL data

## 📝 Notes

* Default MySQL credentials are defined in `compose.yaml` (for demo purposes only).
* In production, use Docker secrets or environment variables.
