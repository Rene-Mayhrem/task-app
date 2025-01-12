FROM maven:3.8.1-openjdk-slim AS build 

WORKDIR /app
COPY .pom.xml . 
COPY src ./src 
RUN mvn clean package

FROM openjdk:11-jre-slim

VOLUME /tmp
COPY --from=build /app/target/task-service-0.0.1-SNAPSHOT.jar task-service.jar 
ENTRYPOINT [ "java", "-jar", "/task-service.jar" ]