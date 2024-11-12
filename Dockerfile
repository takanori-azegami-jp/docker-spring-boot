# from the base image of a jdk 11 container on Ubuntu 20.04.
FROM adoptopenjdk/openjdk11:x86_64-ubuntu-jdk-11.0.18_10-slim

# create a work dir.
WORKDIR /app

# copy a jvm app.
COPY target/*.jar app.jar

# open port 8080 for a jvm app.
EXPOSE 8080

# startup a jvm app.
ENTRYPOINT ["java","-jar","app.jar"]