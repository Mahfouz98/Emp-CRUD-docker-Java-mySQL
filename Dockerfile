FROM openjdk:17-jdk-alpine
EXPOSE 8080
EXPOSE 3306
ARG JAR_FILE=target/employee-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
