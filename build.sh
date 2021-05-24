#!/bin/sh

set -e

# https://spring.io/guides/gs/spring-boot-docker/
docker build -t michaelkubecourse/basic-microservice:latest -t michaelkubecourse/basic-microservice:1.0.0 .
