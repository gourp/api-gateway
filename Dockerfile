FROM openjdk:8

COPY target/gateway-0.0.1-SNAPSHOT.jar gateway-0.0.1-SNAPSHOT.jar

COPY src/main/resource/application.properties application.properties

CMD ["java","-jar","gateway-0.0.1-SNAPSHOT.jar","-Dspring.config.location= ","application.properties"]

EXPOSE 10000
