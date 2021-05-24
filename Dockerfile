FROM amazoncorretto:16.0.1-alpine

ARG APP_VERSION=1.0.0

LABEL \
  maintainer="Michael K" \
  org.opencontainers.image.title="michaelkubecourse-basic-microservice" \
  org.opencontainers.image.description="Basic Microservice (Spring Boot) for course Configuring Kubernetes for Reliability with LitmusChaos" \
  org.opencontainers.image.authors="Michael (Mikhail) Knyazev" \
  org.opencontainers.image.url="https://github.com/mikhailknyazev/michaelkubecourse-basic-microservice" \
  org.opencontainers.image.vendor="Michael (Mikhail) Knyazev" \
  app.tag="$APP_VERSION"

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
