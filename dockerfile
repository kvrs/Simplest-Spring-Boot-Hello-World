FROM openjdk:8-jdk-alpine
COPY ./target/*.war /usr/app
WORKDIR /usr/app
ENTRYPOINT["java",".jar","*.war"]
