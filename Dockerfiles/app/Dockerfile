FROM maven AS build
RUN git clone https://github.com/rahuldevlenka16/spring_boot_todo_app.git
RUN cd spring_boot_todo_app && mvn clean package

FROM adoptopenjdk/openjdk8
COPY --from=build spring_boot_todo_app/target/todoApp.jar app/todoApp.jar

# ENTRYPOINT [ "mvn" ]
CMD [ "java", "-jar", "app/todoApp.jar" ]
