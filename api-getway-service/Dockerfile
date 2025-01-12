FROM openjdk:11-jre-slim 

VOLUME /tmp 
COPY target/api-gateway-service-0.0.1-SNAPSHOT.jar api-gateway.jar

ENTRYPOINT [ "java", "-jar", "/api-getway-service.jar" ]