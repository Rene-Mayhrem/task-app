FROM openjdk:11-jre-slim

VOLUME /tmp
COPY target/task-service-0.0.1-SNAPSHOT.jar task-service.jar 
ENTRYPOINT [ "java", "-jar", "/task-service.jar" ]