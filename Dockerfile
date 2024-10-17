#FROM openjdk:17
#ARG JAR_FILE=*.jar
#COPY ${JAR_FILE} app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/app.jar"]
FROM openjdk:17-jdk-alpine AS builder
RUN cd ./springboot-CICD && mkdir app
WORKDIR /app
COPY springboot-CICD/ ./

RUN ls -la /

RUN chmod +x ./gradlew
RUN ./gradlew bootJar
ARG JAR_FILE=/springboot-CICD/build/libs/springboot-CICD-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} docker-springboot.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker-springboot.jar"]
