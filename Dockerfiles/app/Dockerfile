# Stage 1: Build the app using Maven
FROM maven:3.8.1-openjdk-17 AS build

# Clone the specific branch and build the app
RUN git clone --branch cicd https://github.com/rahuldevlenka16/spring_boot_todo_app.git
WORKDIR /spring_boot_todo_app
RUN mvn clean package -DskipTests

# Stage 2: Create the runtime image
FROM openjdk:17-ea-18-slim

# Copy the built .jar file from the build stage
COPY --from=build /spring_boot_todo_app/target/todoApp.jar /app/todoApp.jar

# Set the working directory and command to run the app
WORKDIR /app
CMD ["java", "-jar", "todoApp.jar"]
