#   build all images using docker-compose-build file
cd course-03/exercises/udacity-deployment/docker/ && docker-compose -f docker-compose-build-dev.yaml build

#   login to docker registry
docker login --password $DOCKER_REGISTRY_PASSWORD -username $DOCKER_REGISTRY_USERNAME

#   push all the images of my project to docker registry
docker push kemsty2/frontend:dev
docker push kemsty2/reverseproxy:dev
docker push kemsty2/udacity-restapi-feed:dev
docker push kemsty2/udacity-restapi-user:dev