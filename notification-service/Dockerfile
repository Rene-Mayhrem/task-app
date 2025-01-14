FROM maven:3.8.1-openjdk-17-slim AS build 

WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

FROM openjdk:17-slim 
COPY --from=build /app/target/notification-service-0.0.1-SNAPSHOT.jar notification-service.jar 
RUN apt-get update && apt-get install -y iputils-ping curl && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "java", "-jar", "/notification-service.jar" ]

