#!/bin/bash

set -ev

#   build all images using docker-compose-build file
docker-compose -f $PWD/course-03/exercises/udacity-deployment/docker/docker-compose-build-prod.yaml build

#   login to docker registry
echo "$DOCKER_REGISTRY_PASSWORD" | docker login -u "$DOCKER_REGISTRY_USERNAME" --password-stdin

#   push all the images of my project to docker registry
docker-compose -f $PWD/course-03/exercises/udacity-deployment/docker/docker-compose-build-prod.yaml push