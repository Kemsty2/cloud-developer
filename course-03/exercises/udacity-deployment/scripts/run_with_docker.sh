#!/bin/bash

set -ev

docker-compose -f $PWD/course-03/exercises/udacity-deployment/docker/docker-compose.yaml build
docker-compose -f $PWD/course-03/exercises/udacity-deployment/docker/docker-compose.yaml up