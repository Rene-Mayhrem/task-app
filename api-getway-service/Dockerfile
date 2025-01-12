FROM maven:3.8.1-openjdk-11-slim AS build 
WORKDIR /app
COPY pom.xml . 
COPY src ./src 
RUN mvn clean package

FROM openjdk:11-jre-slim 

VOLUME /tmp 
COPY --from=build /app/target/api-gateway-service-0.0.1-SNAPSHOT.jar api-gateway.jar

ENTRYPOINT [ "java", "-jar", "/api-getway-service.jar" ]