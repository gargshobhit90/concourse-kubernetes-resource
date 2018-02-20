#!/usr/bin/env bash

response="$(docker build .)"
IMAGE_ID=$(echo $response | awk 'NF>1{print $NF}')
echo "******** Pushing docker image ID $IMAGE_ID ********"
docker tag $IMAGE_ID periscopedata/concourse-kubernetes-resource:latest
docker push periscopedata/concourse-kubernetes-resource:latest
