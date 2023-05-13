#!/bin/bash

# Set the name and version of the image
IMAGE_NAME=project
IMAGE_VERSION=v2

# Tag the image with the Docker Hub repository name and version
docker tag $IMAGE_NAME:$IMAGE_VERSION rohithdhamu/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION rohithdhamu/dev:$IMAGE_VERSION

# Push the image to Docker Hub
docker push rohithdhamu/prod:$IMAGE_VERSION
docker push rohithdhamu/dev:$IMAGE_VERSION
