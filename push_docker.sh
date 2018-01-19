#!/usr/bin/env bash

# Run `$ docker build .` to build an image
# Run `$ docker images` to get the image ID for the one you want to push to Docker Hub
# Call this script: `$ ./push_docker.sh <docker-image-id>

IMAGE_ID=$1
docker tag $IMAGE_ID 490843488481.dkr.ecr.us-east-1.amazonaws.com/concourse-multiple-kube-deployments:latest
docker push 490843488481.dkr.ecr.us-east-1.amazonaws.com/concourse-multiple-kube-deployments:latest
