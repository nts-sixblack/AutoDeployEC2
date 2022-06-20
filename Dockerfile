FROM openjdk:11
COPY target/autodeploy.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]