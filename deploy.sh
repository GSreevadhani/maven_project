#!/bin/bash

# Variables
IMAGE_NAME="sreevadhani30/mave"
LOCAL_TAG="test"

# Step 1: Build Docker image
docker build -t $LOCAL_TAG -f Dockerfile .

# Step 2: Authenticate to Docker Hub
echo "soundbetter" | docker login -u sreevadhani30 --password-stdin

# Step 3: Tag and push image to Docker Hub
docker tag $LOCAL_TAG $IMAGE_NAME
docker push $IMAGE_NAME
