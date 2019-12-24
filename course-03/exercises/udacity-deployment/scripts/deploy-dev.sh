#!/bin/bash

set -ev

#   Create service object
kubectl apply -f $PWD/course-03/exercises/udacity-deployment/k8s/services/dev

#   Create deployment object
kubectl apply -f $PWD/course-03/exercises/udacity-deployment/k8s/deployments/dev