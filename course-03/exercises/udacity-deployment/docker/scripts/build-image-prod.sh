#!/bin/bash

set -ev

#   build all images using docker-compose-build file
docker-compose -f $PWD/course-03/exercises/udacity-deployment/docker/docker-compose-build-prod.yaml build

#   login to docker registry
docker login --password $DOCKER_REGISTRY_PASSWORD -username $DOCKER_REGISTRY_USERNAME

#   push all the images of my project to docker registry
docker push kemsty2/frontend:prod
docker push kemsty2/reverseproxy:prod
docker push kemsty2/udacity-restapi-feed:prod
docker push kemsty2/udacity-restapi-user:prod