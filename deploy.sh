#!/bin/bash

# Variables
# deploy.sh
IMAGE_NAME="subiksha17/maven_project"
LOCAL_TAG="test"

# Step 1: Build Docker image
docker build -t $LOCAL_TAG -f Dockerfile .

# Step 2: Authenticate to Docker Hub using token (not plain password)
docker login -u subiksha17 -p dckr_pat_qdjWp1JpC1XIdg_SM_3ZONENje8

# Step 3: Tag and push image to Docker Hub
docker tag $LOCAL_TAG $IMAGE_NAME
docker push $IMAGE_NAME

