#!/bin/bash

# Step 1: Build Docker image
echo "Building Docker image..."
docker build -t maven-java-app .

# Step 2: Run the Docker container
echo "Running Docker container..."
docker run --rm -it maven-java-app
