
#FROM openjdk:11
#COPY target/autodeploy.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

FROM maven:latest
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw.cmd pom.xml ./
RUN mvn dependency:go-offline
COPY ./src ./src
CMD ["mvn","spring-boot:run"]


